

--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_t_pps1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_v_pps1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
CREATE TABLE ft_t_pps1 (
	pps1_oid varchar(10) NOT NULL,
	last_chg_usr_id varchar(256) NULL,
	data_src_id varchar(40) NULL,
	last_chg_tms timestamp(0) NULL,
	start_tms timestamp(0) NULL,
	end_tms timestamp(0) NULL,
	prop_subtyp varchar(255) NOT NULL,
	prop_subtyp_us varchar(255) NULL,
	prop_subtyp_emea varchar(255) NULL,
	dl_path_us varchar(255) NULL,
	dl_path_emea varchar(255) NULL,
	gresb_prop_sect varchar(255) NULL,
	gresb_prop_typ varchar(255) NULL,
	gresb_prop_subtyp varchar(255) NULL,
	msci_us_subtyp varchar(255) NULL,
	msci_emea_apac_subtyp varchar(255) NULL,
	inrev_emea varchar(255) NULL,
	anrev_apac varchar(255) NULL,
	ncreif_prop_typ varchar(255) NULL,
	ncreif_design varchar(255) NULL,
	ncreif_usage varchar(255) NULL,
	ncreif_leasing varchar(255) NULL,
	gresb_gfa_min_ration numeric(20, 10) NULL,
	gresb_gfa_max_ration numeric(20, 10) NULL,
	CONSTRAINT ft_t_pps1_pk PRIMARY KEY (pps1_oid)
)'
, l_tbl_name);
execute format('CREATE UNIQUE INDEX ft_x_pps1_u001 ON ft_t_pps1 USING btree (prop_subtyp, prop_subtyp_us, COALESCE(end_tms, ''9999-12-31 23:59:59'')) where (prop_subtyp_us <> ''Not Mapped'')');
execute format('CREATE UNIQUE INDEX ft_x_pps1_u002 ON ft_t_pps1 USING btree (prop_subtyp, prop_subtyp_emea, COALESCE(end_tms, ''9999-12-31 23:59:59'')) where (prop_subtyp_emea <> ''Not Mapped'')');
execute format('CREATE UNIQUE INDEX ft_x_pps1_u003 ON ft_t_pps1 USING btree (prop_subtyp, dl_path_us, COALESCE(end_tms, ''9999-12-31 23:59:59'')) where (dl_path_us <> ''Not Mapped'')');
execute format('CREATE UNIQUE INDEX ft_x_pps1_u004 ON ft_t_pps1 (prop_subtyp,dl_path_emea, COALESCE(end_tms, ''9999-12-31 23:59:59'')) where (dl_path_emea <> ''Not Mapped'')');
execute format('CREATE UNIQUE INDEX ft_x_pps1_u005 on ft_t_pps1 (prop_subtyp_us, prop_subtyp_emea, dl_path_us, dl_path_emea, COALESCE(end_tms, ''9999-12-31 23:59:59'')) where (prop_subtyp_us <> ''Not Mapped'' or  prop_subtyp_emea <> ''Not Mapped'' or  dl_path_us <> ''Not Mapped'' or  dl_path_emea <> ''Not Mapped'')');
execute format('CREATE UNIQUE INDEX ft_x_pps1_u006 ON ft_t_pps1 (prop_subtyp, COALESCE(end_tms, ''9999-12-31 23:59:59''))');
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
