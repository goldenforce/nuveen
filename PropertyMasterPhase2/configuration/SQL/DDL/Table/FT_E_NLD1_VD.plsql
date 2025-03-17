--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_nld1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_nld1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
					CREATE TABLE IF NOT EXISTS ft_e_nld1
						(
						LAST_CHG_USR_ID VARCHAR(256) NOT NULL,
						LAST_CHG_TMS TIMESTAMP(0) NOT NULL,
						DATA_STAT_TYP VARCHAR(20),
						START_TMS TIMESTAMP(0) NOT NULL,
						END_TMS TIMESTAMP(0), 
						DATA_SRC_ID VARCHAR(40), 
						INSTR_ID VARCHAR(10), 
						INST_MNEM VARCHAR(10), 
						NLD1_OID VARCHAR(10) NOT NULL,
						NLD1_LONG_DESC VARCHAR(40000), 
						NLD1_USR_TXT_1 VARCHAR(40000), 
						NLD1_USR_TXT_2 VARCHAR(40000), 
						NLD1_USR_TXT_3 VARCHAR(40000)
						)
						', l_tbl_name);		
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
