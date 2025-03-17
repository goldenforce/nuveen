--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_t_pds1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'FT_T_REQ1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;

	if(l_tbl_exists_flag is null) then
		execute format('Create table ft_t_pds1(
pds1_oid varchar PRIMARY KEY     NOT NULL,	
status varchar,
start_tms timestamp,
end_tms timestamp,
pub_msg text
)'
, l_tbl_name);

		raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;
	end if;
	

		
end $$;
/
