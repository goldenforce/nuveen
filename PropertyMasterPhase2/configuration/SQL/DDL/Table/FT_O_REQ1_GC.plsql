--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_o_req1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_req1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;

	if(l_tbl_exists_flag is null) then
		execute format('CREATE TABLE IF NOT EXISTS ft_o_req1
							(
								REQ1_OID VARCHAR(10) NOT NULL,
								seq_num int4 NOT NULL,
								JOB_ID VARCHAR(16) NOT NULL,
								DATA_SRC_ID VARCHAR(40) NULL,
								REQ_XML VARCHAR(60000) NULL,
								VND_RQST_TMS TIMESTAMP(0) NULL,
								VND_RQST_TYP VARCHAR(40) NULL
							)'
, l_tbl_name);

		execute format('ALTER TABLE ft_o_req1 ADD CONSTRAINT FT_T_REQ1_PK PRIMARY KEY (REQ1_OID,JOB_ID)',l_tbl_name);
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
