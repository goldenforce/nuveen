create or replace function nuveen_translate_propertySubtype (p_region varchar, p_source varchar , p_subtype varchar)
RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	declare 
	v_globalSubtype varchar(1000) := null;
	--v_sql varchar(500);
begin
	if ($1 = 'US' and $2 ='DEALPATH') then
	select prop_subtyp into v_globalSubtype from ft_T_pps1 where end_tms is null and  dl_path_us =   $3 ;
	end if ;
	if ($1 = 'EMEA' and $2 ='DEALPATH') then
	select prop_subtyp into v_globalSubtype from ft_T_pps1 where end_tms is null and  dl_path_emea =   $3 ;
	end if ;
	if ($1 = 'US' and $2 ='YARDI') then
	select prop_subtyp into v_globalSubtype from ft_T_pps1 where end_tms is null and  prop_subtyp_us =   $3 ;
	end if ;
	if ($1 = 'EMEA' and $2 ='YARDI') then
	select prop_subtyp into v_globalSubtype from ft_T_pps1 where end_tms is null and  prop_subtyp_emea =   $3 ;
	end if ;
return v_globalSubtype;

 EXCEPTION
		WHEN OTHERS
		THEN
			RAISE NOTICE 'SQL ERROR: %', SQLERRM;
   END;                                  
$function$
/