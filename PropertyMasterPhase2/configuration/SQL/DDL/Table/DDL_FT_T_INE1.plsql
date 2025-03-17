--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_ine1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_ine1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
					CREATE TABLE IF NOT EXISTS ft_e_ine1
						(
						INE1_OID VARCHAR(10) NOT NULL,
						INST_MNEM VARCHAR(10) NOT NULL,
						INSTITUTION_TYP VARCHAR(50) NOT NULL,
						INST_AUTHORIZER VARCHAR(256),
						CHARTER_RENEWAL_DTE TIMESTAMP(0),
						AUTHORIZED_GRADE VARCHAR(256),
						ENROL_CPCT VARCHAR(256),
						INST_LOCATION VARCHAR(256),
						INST_METRO_SVRC_AREA VARCHAR(256),
						INST_FCLTY_TYP VARCHAR(256),
						EDU_MGMNT_CORP VARCHAR(256),
						INST_MRKT_SRVC_AREA VARCHAR(256),
						INST_MRKT_TYP VARCHAR(256),
						INST_SPORNSORSHIP VARCHAR(256),
						INST_SYSTEM_TYP VARCHAR(256),
						INST_SERVICE_TYP VARCHAR(256),
						COMPETATIVE_ENV VARCHAR(256),
						INST_PROPERTY_NME VARCHAR(256),
						LAST_CHG_USR_ID VARCHAR(256),
						LAST_CHG_TMS TIMESTAMP(0),
						DATA_SRC_ID VARCHAR(40),
						START_TMS TIMESTAMP(0),
						END_TMS TIMESTAMP(0)
						) 
		', l_tbl_name);
		execute format('CREATE UNIQUE INDEX ft_e_ine1_u001 ON ft_e_ine1 (INST_MNEM,INSTITUTION_TYP)',l_tbl_name);
		
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
