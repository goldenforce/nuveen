--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_t_rrr1';
l_tbl_exists_flag varchar(1000) := null ;
begin
	select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name;
	if(l_tbl_exists_flag is null) then
		execute format('
					create table if not exists FT_T_RRR1 (
						RUN_RTNG_RECON CHAR(1)
		)'
, l_tbl_name);
		raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;
	end if;
end $$;
