--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_msc1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_msc1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
					CREATE TABLE IF NOT EXISTS ft_e_msc1 
						(
							msc1_oid varchar(10) NOT NULL,
							last_chg_usr_id varchar(256) NULL,
							data_src_id varchar(40) NULL,
							last_chg_tms TIMESTAMP(0) NULL,
							start_tms TIMESTAMP(0) NULL,
							end_tms TIMESTAMP(0) NULL,
							msci_issr_nme varchar(255) NULL,
							msci_issr_id varchar(255) NULL,
							cusip varchar(40) NULL,
							sedol varchar(255) NULL,
							isin varchar(255) NULL,
							id_bb_company varchar(255) NULL,
							instr_id varchar(255) NULL,
							status varchar(255) NULL,
							msc1_issr_desc varchar(255) NULL,
							CONSTRAINT ft_e_msc1_pk PRIMARY KEY (msc1_oid)
						)
		', l_tbl_name);
		execute format('CREATE UNIQUE INDEX ft_x_msc1_u001 ON ft_e_msc1 USING btree (instr_id, COALESCE(start_tms, ''9999-12-31''::date))',l_tbl_name);
		
		raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;
	end if;
	
	-- view start
	select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	
	select 1 into l_view_exists_flag from information_schema.tables where table_name  = l_view_name ;

	
	if(l_tbl_exists_flag is not null and l_view_exists_flag is null) then
		execute format('CREATE OR REPLACE VIEW %I AS SELECT * FROM %I',l_view_name,l_tbl_name);
		raise notice 'Created View %', l_view_name;
	else
		raise notice 'View % already exists', l_view_name;
	end if;
	
end $$;
/