
do $$
declare
l_tbl_name varchar(1000) := 'ft_e_rte1';
l_tbl_exists_flag varchar(1000) := null ;
l_view_name varchar(1000) := 'ft_t_rte1';
l_view_exists_flag NUMERIC := 0 ;
begin

		select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	if(l_tbl_exists_flag is null) then
		execute format('
					CREATE TABLE FT_E_RTE1
						(
						
							RTE1_OID VARCHAR(10) NOT NULL,
							LAST_CHG_USR_ID VARCHAR(256),
							DATA_SRC_ID VARCHAR(40),
							LAST_CHG_TMS DATE,
							START_TMS DATE,
							END_TMS DATE,
							RTE_TYPE VARCHAR(255),
							LMT NUMERIC(20,10),
							LMT_TYPE VARCHAR(255),
							RTE_OPTN VARCHAR(255) NOT NULL,
							INSTR_ID VARCHAR(10) NOT NULL
							
						)'
, l_tbl_name);
			execute format('ALTER TABLE FT_E_RTE1 ADD CONSTRAINT FT_E_RTE1_PK PRIMARY KEY (RTE1_OID)',l_tbl_name);
			execute format('ALTER TABLE FT_E_RTE1 ADD CONSTRAINT RTE1F001 FOREIGN KEY (INSTR_ID) REFERENCES FT_T_ISSU (INSTR_ID)',l_tbl_name);
			execute format('CREATE UNIQUE INDEX FT_E_RTE1_U001 ON FT_E_RTE1 (INSTR_ID, RTE_OPTN, DATA_SRC_ID)',l_tbl_name);
		
		raise notice 'created table %', l_tbl_name;
	else
		raise notice 'table % already exists', l_tbl_name;
	end if;
	
	-- view start
	select 1 into l_tbl_exists_flag from information_schema.tables where table_name  = l_tbl_name ;
	
	select count(1) into l_view_exists_flag from information_schema.tables where table_name  = l_view_name ;

	
	if(l_tbl_exists_flag is not null and l_view_exists_flag = 0) then
		execute format('CREATE OR REPLACE VIEW %I AS SELECT * FROM %I',l_view_name,l_tbl_name);
		raise notice 'Created View %', l_view_name;
	else
		raise notice 'View % already exists', l_view_name;
	end if;
	
end $$;
