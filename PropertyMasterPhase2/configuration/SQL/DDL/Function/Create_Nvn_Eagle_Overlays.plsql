--{$$-STATEMENT-$$}
CREATE OR REPLACE FUNCTION create_nvn_eagle_overlays()
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE 
 c1 cursor for select * from Eagle_overlays o, Eagle_overlays_Fields f where o.field_name_override = f.field_name_override and o.end_date is null;
v_cnt int;
v_instr_id varchar(10);
v_cnt_2 int;
v_pk varchar(10);
v_fieldvalue varchar(500);
v_gso_name varchar (20);
v_sql_getPK varchar(4000);
v_sql_InsertOVRC varchar(4000);
c2 refcursor;

BEGIN

raise info 'START: ';

for i in c1 loop

select count(1) into v_cnt from ft_t_isid where iss_id=i.security_alias;

if v_cnt> 0 then 
    select instR_id into v_instr_id from ft_t_isid  where iss_id=i.security_alias and id_ctxt_typ='NVEENSECID' and end_Tms is null;
   -- select instR_id into v_instr_id from ft_t_isid  where iss_id=i.security_alias  and end_Tms is null;
    select iss_typ_clsf_nme into v_gso_name from fT_t_isty where iss_typ =(select iss_typ from ft_t_issu where instr_id=v_instr_id);
	
	-- get the where condition from TABLE
	if (i.predicate_full = '' || i.predicate_full is null) THEN
		v_sql_getPK :=  'select ' || i.oid_field || ',' || i.gsdm_field || ' from FT_T_' || i.gsdm_table  || ' where end_Tms is null and instr_id=$1';
	
		if (i.predicate != '') then
			v_sql_getPK := v_sql_getPK || ' and ' || i.predicate;
		end if;
	
		v_sql_getPK := v_sql_getPK || ';';
	ELSIF (i.predicate_full is not null and i.predicate_full != '') THEN
		v_sql_getPK := i.predicate_full ||  ';';
	END IF;
	
	raise info 'Instr_id: %, v_sql_getPK: %', v_instr_id, v_sql_getPK;
	
	open c2 for execute format(v_sql_getPK) using v_instr_id ;
		
	raise info 'execute done';
	
	Loop
	begin
		fetch c2 into v_pk, v_fieldvalue;
	
		exit when not found;

		if v_pk != '' then

		raise info 'insert prepare done';
		
		execute format('INSERT INTO ft_t_ovrc (ovr_ctl_oid,  appl_id, tbl_id, col_nme, ovr_ref_typ, ovr_ref_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, lock_level_typ, ovr_tbl_key_txt, bus_attr_path_txt, lock_col_val_txt)
		VALUES(new_oid(), $1, $2, $3, $4, $5, to_Date(''01/01/2000'',''DD/MM/YYYY''), NULL, current_timestamp, $6, $7, $8, $9, $10)') using 'STRDATA',i.gsdm_table, i.gsdm_field, i.entity_table, v_instr_id, 'user1','PERP',i.oid_field||'='||v_pk||';',v_gso_name||'.'||i.gso_field,v_fieldvalue;
	
		raise info 'insert execute done';
		
		end if;
	
	 EXCEPTION
		WHEN sqlstate '23505' then
			RAISE INFO 'SQL ERROR: %', SQLERRM;
			continue;
		
		WHEN OTHERS
		THEN
			RAISE INFO 'SQL ERROR: %', SQLERRM;
	
	end;
	end loop;
	close c2;

end if;
end loop;

      RETURN 1;
     
close c1;

 EXCEPTION
		WHEN OTHERS
		THEN
			RAISE INFO 'SQL ERROR: %', SQLERRM;

END;
$function$
/
