--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_npf1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_npf1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass(l_tbl_name);
	select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('CREATE TABLE ft_e_npf1 (
	npf1_oid varchar(10) NOT NULL,
	msg_typ varchar(255) NOT NULL,
	do_acknowledge varchar(255) NULL,
	do_publishing varchar(255) NULL,
	do_rr varchar(255) NULL,
	last_chg_usr_id varchar(256) NULL,
	last_chg_tms TIMESTAMP(0) NULL,
	data_src_id varchar(40) NULL,
	start_tms TIMESTAMP(0) NULL,
	end_tms TIMESTAMP(0) NULL,
	asset_type varchar NULL,
	publishing_type varchar NULL,
	profile_name varchar NULL,
	CONSTRAINT ft_e_npf1_pk PRIMARY KEY (npf1_oid)
)', l_tbl_name);
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
