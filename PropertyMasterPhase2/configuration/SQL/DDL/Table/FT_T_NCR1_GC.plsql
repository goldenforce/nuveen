--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_t_ncr1';
l_tbl_exists_flag varchar(1000) := null ;
--l_view_name varchar(1000) := 'ft_t_cnt1';
--l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
					create table if not exists FT_T_NCR1 (
						LAST_CHG_USR_ID VARCHAR(256) NOT null,
						LAST_CHG_TMS TIMESTAMP(0) NOT null,
						DATA_STAT_TYP VARCHAR(20) ,
						START_TMS TIMESTAMP(0) NOT null,
						END_TMS TIMESTAMP(0) ,
						DATA_SRC_ID VARCHAR(40) ,
						INST_MNEM VARCHAR(10) NOT null,
						NCR1_OID VARCHAR(10) NOT null,
						NCR1_REVIEW_EMPL_OID VARCHAR(10),
						NCR1_INFO_DATE TIMESTAMP(0),
						NCR1_CREDIT_REPORT_RATIONALE VARCHAR(40000),
						NCR1_RESP_EMPL_OID VARCHAR(10),
						NCR1_AUTH_EMPL_OID VARCHAR(10),
						NCR1_CREDIT_REPORT_DTE TIMESTAMP(0),
						NCR1_CREDIT_REPORT_OUTLOOK VARCHAR(40),
						NCR1_NVN_LNG_RATING VARCHAR(40),
						NCR1_CREDIT_REPORT_NUM VARCHAR(100),
						NCR1_CREDIT_REPORT_STAT_TYP VARCHAR(40),
						NCR1_CREDIT_REPORT_TYP VARCHAR(40),
						NCR1_CREDIT_REPORT_COMMENT VARCHAR(40000)
		)'
, l_tbl_name);
			execute format('ALTER TABLE FT_T_NCR1 ADD CONSTRAINT FT_T_NCR1_PK PRIMARY KEY (NCR1_OID)',l_tbl_name);
			execute format('ALTER TABLE FT_T_NCR1 ADD CONSTRAINT NCR1F001 FOREIGN KEY (INST_MNEM) REFERENCES FT_T_FINS (INST_MNEM)',l_tbl_name);
			execute format('ALTER TABLE FT_T_NCR1 ADD CONSTRAINT NCR1F002 FOREIGN KEY (NCR1_REVIEW_EMPL_OID) REFERENCES FT_T_EMPL (EMPL_OID)',l_tbl_name);
			execute format('ALTER TABLE FT_T_NCR1 ADD CONSTRAINT NCR1F003 FOREIGN KEY (NCR1_RESP_EMPL_OID) REFERENCES FT_T_EMPL (EMPL_OID)',l_tbl_name);
			execute format('ALTER TABLE FT_T_NCR1 ADD CONSTRAINT NCR1F004 FOREIGN KEY (NCR1_AUTH_EMPL_OID) REFERENCES FT_T_EMPL (EMPL_OID)',l_tbl_name);
			--execute format('CREATE UNIQUE INDEX FT_E_CNT1_U001 ON FT_E_CNT1 (INSTR_ID,WSO_CNTRCT_ID,START_TMS)',l_tbl_name);
			execute format('ALTER TABLE FT_T_NCR1 ADD COLUMN NCR1_CREDIT_REPORT_SOURCES VARCHAR(4000)',l_tbl_name);
		raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;
	end if;
	
end $$;
/