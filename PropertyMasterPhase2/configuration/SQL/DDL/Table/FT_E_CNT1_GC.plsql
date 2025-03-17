--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_cnt1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_cnt1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
					CREATE TABLE FT_E_CNT1
						(
							CNT1_OID VARCHAR(10) NOT NULL,
							LAST_CHG_USR_ID VARCHAR(256),
							DATA_SRC_ID VARCHAR(40),
							LAST_CHG_TMS TIMESTAMP(0),
							START_TMS TIMESTAMP(0),
							END_TMS TIMESTAMP(0),
							INSTR_ID VARCHAR(10) NOT NULL,
							CONTRACT_NME VARCHAR(255),
							IS_CONTRACT_ACTIVE CHAR(1),
							CNTRCT_GLOB_AMT NUMERIC(20,10),
							CNTRCT_BASE_CRTE NUMERIC(20,10),
							CNTRCT_BASE_CRTE_ALL_IN NUMERIC(20,10),
							CNTRCT_MAT_EXP_DTE TIMESTAMP(0),
							CNTRCT_NXT_PAY_DTE TIMESTAMP(0),
							WSO_CNTRCT_ID VARCHAR(255),
							CNTRCT_TYPE VARCHAR(255),
							CNTRCT_FREQ VARCHAR(255),
							WSO_CNTRCT_NOTES VARCHAR(255),
							CNTRCT_ACCRL_BASIS VARCHAR(255),
							CNTRCT_MNTH_CNT VARCHAR(255),
							SPREAD_ADJ NUMERIC(20,10)
						)'
, l_tbl_name);
			execute format('ALTER TABLE FT_E_CNT1 ADD CONSTRAINT FT_E_CNT1_PK PRIMARY KEY (CNT1_OID)',l_tbl_name);
			execute format('ALTER TABLE FT_E_CNT1 ADD CONSTRAINT CNT1F001 FOREIGN KEY (INSTR_ID) REFERENCES FT_T_ISSU (INSTR_ID)',l_tbl_name);
			execute format('CREATE UNIQUE INDEX FT_E_CNT1_U001 ON FT_E_CNT1 (INSTR_ID,WSO_CNTRCT_ID,START_TMS)',l_tbl_name);
		
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