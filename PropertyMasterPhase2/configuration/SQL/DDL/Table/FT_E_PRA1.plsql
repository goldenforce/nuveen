--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_pra1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_pra1';
l_view_exists_flag varchar(1000) := null ;
begin
 	--l_tbl_exists_flag := to_regclass('#DBOWNER#'||'.'||l_tbl_name);
		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('CREATE TABLE IF NOT EXISTS ft_e_pra1
						(
						PRA1_OID VARCHAR(10) NOT NULL,
						FS_ROE_CPCT NUMERIC(20,10),
						CUR_MKT_CAP NUMERIC(20,10),
						EQY_BETA NUMERIC(20,10),
						EQY_FLOAT NUMERIC(20,10),
						HIGH_52WEEK NUMERIC(20,10),
						LOW_52WEEK NUMERIC(20,10),
						PX_HIGH NUMERIC(20,10),
						PX_LAST NUMERIC(20,10),
						PX_LOW NUMERIC(20,10),
						PX_QUOTE_LOT_SIZE NUMERIC(20,10),
						VOLUME_AVG_30D NUMERIC(20,10),
						VOLUME_AVG_10D NUMERIC(20,10),
						VOLUME_AVG_100D NUMERIC(20,10),
						VOLUME_AVG_6M NUMERIC(20,10),
						VOLUME_AVG_90D NUMERIC(20,10),
						AVG_LIFE NUMERIC(20,10),
						BID_PX_VAL_BP NUMERIC(20,10),
						CRNCY_ADJ_MKT_CAP NUMERIC(20,10),
						DELTA NUMERIC(20,10),
						EQY_IND_DPS_ANNUAL_GROSS NUMERIC(20,10),
						EQY_IND_DPS_ANNUAL_NET NUMERIC(20,10),
						FUT_AGGTE_OPEN_INT NUMERIC(20,10),
						FUT_AGGTE_VOL NUMERIC(20,10),
						GAMMA NUMERIC(20,10),
						OPT_STRIKE_PX NUMERIC(20,10),
						OPT_THETA_BEST NUMERIC(20,10),
						OPT_TICK_SIZE NUMERIC(20,10),
						OPT_UNDL_PX NUMERIC(20,10),
						PE_RATIO NUMERIC(20,10),
						PX_CLOSE_MTD NUMERIC(20,10),
						PX_CLOSE_QTD NUMERIC(20,10),
						VEGA NUMERIC(20,10),
						Z_SPRD_BID NUMERIC(20,10),
						PLACE_OF_SETTLEMENT VARCHAR(64),
						INSTR_ID VARCHAR(10) NOT NULL,
						DATE_OF_LAST_UPDATE TIMESTAMP(0),
						LAST_TRADEABLE_DT TIMESTAMP(0),
						SETTLE_DT TIMESTAMP(0),
						CDS_SPREAD_TICKER_5Y VARCHAR(255),
						PRIOR_CLOSE_MID_PX NUMERIC(20,10),
						LAST_CHG_USR_ID VARCHAR(256) NOT NULL,
						LAST_CHG_TMS TIMESTAMP(0) NOT NULL,
						DATA_SRC_ID VARCHAR(40) NOT NULL,
						START_TMS TIMESTAMP(0) NOT NULL,
						END_TMS TIMESTAMP(0),
						ADJST_TMS TIMESTAMP(0) NOT NULL DEFAULT LOCALTIMESTAMP(0),
						MTG_BOND_EQV_YLD_BID	NUMERIC(20,10)
						)', l_tbl_name);

		execute format('CREATE UNIQUE INDEX ft_e_pra1_U001 ON ft_e_pra1 (ADJST_TMS,DATA_SRC_ID,INSTR_ID,START_TMS)',l_tbl_name);
		execute format('CREATE INDEX ft_x_pra1_I001 ON ft_e_pra1 USING btree (INSTR_ID)',l_tbl_name);
		execute format('ALTER TABLE ft_e_pra1 ADD CONSTRAINT ft_e_pra1_PK PRIMARY KEY (PRA1_OID)',l_tbl_name);
		execute format('ALTER TABLE ft_e_pra1 ADD CONSTRAINT PRA1F001 FOREIGN KEY (INSTR_ID) REFERENCES FT_T_ISSU (INSTR_ID)',l_tbl_name);

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
