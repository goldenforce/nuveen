--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_t_rrc1';
l_tbl_exists_flag varchar(1000) := null ;
begin
	select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name;
	if(l_tbl_exists_flag is null) then
		execute format('
					create table if not exists FT_T_RRC1 (
						RRC1_OID VARCHAR(10) PRIMARY KEY NOT NULL,
						ISS_RTNG_OID VARCHAR(10) ,
						FINS_RTNG_OID VARCHAR(10) ,
						RTOP_OID VARCHAR(10) ,
						TBL_ID VARCHAR(4) NOT NULL,
						LAST_CHG_TMS TIMESTAMP(0) NOT NULL,
						LAST_CHG_USR_ID VARCHAR(256) NOT NULL ,
						START_TMS TIMESTAMP(0) NOT NULL,
						END_TMS TIMESTAMP(0)
		)'	
, l_tbl_name);
		raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;
	end if;
end $$;
