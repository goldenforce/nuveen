--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_udr1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_udr1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('CREATE TABLE IF NOT EXISTS ft_e_udr1
								(
								UDR1_OID VARCHAR(10) NOT NULL,
								LAST_CHG_USR_ID VARCHAR(256),
								DATA_SRC_ID VARCHAR(40),
								LAST_CHG_TMS TIMESTAMP(0) NULL,
								START_TMS TIMESTAMP(0) NOT NULL,
								END_TMS TIMESTAMP(0) NULL,
								SOC_RESP_FLAG VARCHAR(60),
								APPRVD_ISSR_ANALYST VARCHAR(60),
								APRVD_ISSR_DATE TIMESTAMP(0),
								CRD_ANALYST_DEF_INDUS_SEC VARCHAR(30),
								INST_MNEM VARCHAR(10) NOT NULL
								)'
, l_tbl_name);

		execute format('ALTER TABLE ft_e_udr1 ADD CONSTRAINT ft_e_udr1_PK PRIMARY KEY (UDR1_OID)',l_tbl_name);
		execute format('ALTER TABLE ft_e_udr1 ADD CONSTRAINT UDR1F001 FOREIGN KEY (INST_MNEM) REFERENCES FT_T_FINS (INST_MNEM)',l_tbl_name);
		execute format('CREATE UNIQUE INDEX ft_e_udr1_U001 ON ft_e_udr1 (INST_MNEM,START_TMS,DATA_SRC_ID)',l_tbl_name);

		raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;
	end if;
	
	-- view start
	select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	
	select 1 into l_view_exists_flag from information_schema.tables where table_name  = l_view_name ;

	l_view_exists_flag := to_regclass('#DBOWNER#'||'.'||l_view_name);
	
	if(l_tbl_exists_flag is not null and l_view_exists_flag is null) then
		execute format('CREATE OR REPLACE VIEW %I AS SELECT * FROM %I',l_view_name,l_tbl_name);
		raise notice 'Created View %', l_view_name;
	else
		raise notice 'View % already exists', l_view_name;
	end if;
	
	
		
end $$;
/
