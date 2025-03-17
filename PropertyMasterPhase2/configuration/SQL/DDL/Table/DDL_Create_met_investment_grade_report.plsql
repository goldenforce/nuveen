
do $$
declare
l_tbl_name varchar(1000) := 'met_investment_grade_report';
l_tbl_exists_flag varchar(1000) := null ;
begin
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
 	 CREATE TABLE met_investment_grade_report (
	instr_id varchar(10) NULL,
	cusip varchar(100) NULL,
	iss_typ varchar(8) NULL,
	rtng_set_oid varchar(10) NULL,
	issue_name varchar(1024) NULL,
	maturity_date timestamp(0) NULL,
	rating_agency_name varchar(40) NULL,
	rating_type varchar(80) NULL,
	rating_mnemonic varchar(8) NULL,
	previous_rating_code varchar(40) NULL,
	previous_rtng_effective_date timestamp(0) NULL,
	previous_rank int8 NULL,
	previous_investment_grade varchar(20) NULL,
	previous_risk_assesment_type varchar(20) NULL,
	current_rating_code varchar(40) NULL,
	current_rtng_effective_date timestamp(0) NULL,
	current_rank int8 NULL,
	current_investment_grade varchar(20) NULL,
	current_risk_assesment_type varchar(20) NULL,
	ratingstatus text NULL,
	nuveen_global_sec_id varchar(50) NULL,
	report_date date NULL)', l_tbl_name);
	raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;

  end if;
end $$;
