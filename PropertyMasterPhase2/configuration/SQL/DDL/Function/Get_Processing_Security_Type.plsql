
-- Equity or Index Option
-- select get_processing_security_type('Equity;;WARRANT;;;;;;;;;;','','') from dual; -- EQWRXX
-- select get_processing_security_type('Equity;;RIGHT;;;;;;;;;;','','') from dual; -- EQRTXX
-- select get_processing_security_type('Index;EQUITY OPTION;OPTION;;;;;;;;;;','','') from dual; -- OPOPEQ
-- select get_processing_security_type('Index;INDEX OPTION;OPTION;;;;;;;;;;','','') from dual; -- OPOPIX
-- select get_processing_security_type('Equity;;MUTUAL FUND;;;;;;;;;;','','') from dual; -- EQEQMF
-- select get_processing_security_type('Equity;;;;;;;;;;;;','','') from dual; -- EQCSCS

-- Non EQUITY
-- select get_processing_security_type('Corp;;;;;;;;;;;;','','') from dual; -- DBIBFD
-- select get_processing_security_type('Corp;;;PAY-IN-KIND;111;;;;;;;;','','') from dual; --  DBIBPK
-- select get_processing_security_type('Corp;;;PAY-IN-KIND;;;;;;;;;','','') from dual; -- DBIBPK
-- select get_processing_security_type('Corp;;;;111;;;;;;;;','','') from dual; -- DBIBPK
-- select get_processing_security_type('Govt;;;PAY-IN-KIND;;;;;;;;;','','') from dual; -- DBIBPK
-- select get_processing_security_type('COMDTY;;;PAY-IN-KIND;;;;;;;;;','FT','FT') from dual; -- FTXXXX
-- select get_processing_security_type('COMDTY;;;PAY-IN-KIND;;;;;;;;;','','FT') from dual; -- NULL
-- select get_processing_security_type('M-MKT;;;PAY-IN-KIND;352;;;;;;;;','','FT') from dual; -- DBDCST
-- select get_processing_security_type(';;;PAY-IN-KIND;;BILLS;;;;;;;','','FT') from dual; -- DBDCST
-- select get_processing_security_type('M-MKT;;;PAY-IN-KIND;7;;;;;;;;','','FT') from dual; -- DBIBMA
-- select get_processing_security_type('M-MKT;;;PAY-IN-KIND;;;0;;;;;;','','FT') from dual; -- DBIBMA
-- select get_processing_security_type('CORP;;;;5;CERT OF DEPOSIT;0;N;;;;;','','FT') from dual; -- DBDCST
-- select get_processing_security_type('CORP;;;;8;CERT OF DEPOSIT;0;N;;;;;','','FT') from dual; -- DBIBMA
-- select get_processing_security_type('CORP;;;;8;CERT OF DEPOSIT;;N;;;;;','','FT') from dual; -- DBIBST
-- select get_processing_security_type('M-MKT;;;;8;CERT OF DEPOSIT;;N;;;;;','','FT') from dual; -- NULL
-- select get_processing_security_type('M-MKT;;;;8;CERT OF DEPOSIT;;N;;;;;','CNTY','FT') from dual; -- DBIBST
-- select get_processing_security_type('govt;;;;314;;;N;;;;;','CNTY','FT') from dual; -- DBFLTP
-- select get_processing_security_type('govt;;;;;;;N;;;;;','CNTY','FT') from dual; -- DBIBFD
-- select get_processing_security_type(';;;;;;;N;;;;;','DLDL','FT') from dual; -- DBIBFD
-- select get_processing_security_type('muni;;;;;;;N;;;;;','FT','FT') from dual; -- DBIBMU
-- select get_processing_security_type('muni;;;;;;;N;;3;;;','FT','FT') from dual; DBFBFB
-- select get_processing_security_type('mtge;;;;;;;N;;3;;;','FT','FT') from dual; -- DBFBFB
-- select get_processing_security_type('mtge;;;;;;;N;;3;IONTL;;','FT','FT') from dual; -- DBFBIO
-- select get_processing_security_type('mtge;;;;;;;N;;3;IO;PO;','FT','FT') from dual; -- DBFBPO
-- select get_processing_security_type('mtge;;;;;;;N;;3;IO;O;','MTBA','FT') from dual; -- DBTATA
-- select get_processing_security_type('mtge;;;;;;;N;;3;IO;O;','PJLN','FT') from dual; -- DBFBFB
-- select get_processing_security_type('mtge;;;;;;;N;;3;IO;O;','','FT') from dual; -- DBFBFB
-- select get_processing_security_type('pfd;;;PAY-IN-KIND;;;;N;;3;IO;O;','','FT') from dual; -- EQCSPK
-- select get_processing_security_type('pfd;;;;;;;N;;;IO;O;','','FT') from dual; -- EQCSPF
-- select get_processing_security_type('pfd;;;;;;;N;;3;IO;O;','','FT') from dual; -- EQCSPF
-- select get_processing_security_type('curncy;;;PAY-IN-KIND;;;;N;;3;IO;O;','','FT') from dual; -- FTXXXX

--{$$-STATEMENT-$$}
  CREATE OR REPLACE FUNCTION get_processing_security_type ( inputStr VARCHAR, lv_calc_security_type VARCHAR, lv_calc_investment_type VARCHAR) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
		lv_inputstr VARCHAR;
		lv_process_security_type VARCHAR(100) := NULL;
  		lv_market_sector_des     VARCHAR ;
        lv_security_type     VARCHAR;
		lv_security_typ2   VARCHAR;
		i_cpn_typ VARCHAR;
		lv_calc_typ INTEGER;
		i_collat_typ           VARCHAR;
    	i_cpn_freq             VARCHAR;
		i_zero_cpn             VARCHAR;
		i_series               VARCHAR;
		lv_most_recent_reported_factor NUMERIC(20,10);
		i_mtg_tranche_typ_long VARCHAR;
		i_mtg_tranche_typ VARCHAR;
		
    BEGIN
	
		lv_inputstr := inputStr;
		-- lv_market_sector_des
		lv_market_sector_des := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_market_sector_des: %', lv_market_sector_des;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_security_type
		lv_security_type := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_security_type: %', lv_security_type;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_security_typ2
		lv_security_typ2 := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_security_typ2: %', lv_security_typ2;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_cpn_typ
		i_cpn_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_cpn_typ: %', i_cpn_typ;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_calc_typ
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			lv_calc_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'lv_calc_typ: %', lv_calc_typ;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_collat_typ
		i_collat_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_collat_typ: %', i_collat_typ;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_cpn_freq
		i_cpn_freq := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_cpn_freq: %', i_cpn_freq;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_zero_cpn
		i_zero_cpn := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_zero_cpn: %', i_zero_cpn;
			
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_series
		i_series := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_series: %', i_series;
			
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_most_recent_reported_factor
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			lv_most_recent_reported_factor := TO_NUMBER(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1),'9999999999.9999999999');
		END IF;
		RAISE INFO 'lv_most_recent_reported_factor: %', lv_most_recent_reported_factor;
			
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_mtg_tranche_typ_long
		i_mtg_tranche_typ_long := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_mtg_tranche_typ_long: %', i_mtg_tranche_typ_long;
			
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_mtg_tranche_typ
		i_mtg_tranche_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_mtg_tranche_typ: %', i_mtg_tranche_typ;
		
		RAISE INFO 'lv_calc_security_type: %', lv_calc_security_type;
		RAISE INFO 'lv_calc_investment_type: %', lv_calc_investment_type;
			
			
        IF UPPER (lv_market_sector_des) = 'EQUITY' OR upper(lv_security_type) = 'INDEX OPTION'
		THEN
			IF upper(lv_market_sector_des) IN ( 'EQUITY' , 'INDEX') THEN
				IF upper(lv_security_typ2)= 'WARRANT' THEN
					lv_process_security_type:= 'EQWRXX';
				elsif upper(lv_security_typ2)= 'RIGHT' THEN
					lv_process_security_type:= 'EQRTXX';
				elsif upper(lv_security_type)= 'EQUITY OPTION' THEN
					lv_process_security_type:= 'OPOPEQ';
				elsif upper(lv_security_type)= 'INDEX OPTION' THEN
					lv_process_security_type := 'OPOPIX';
				elsif upper(lv_security_typ2)= 'MUTUAL FUND' THEN
					lv_process_security_type:= 'EQEQMF';
				ELSE
					lv_process_security_type:= 'EQCSCS';
				END IF;
			END IF;
		ELSE
			 IF UPPER (lv_market_sector_des) IN ('CORP', 'GOVT') AND ( UPPER (COALESCE (i_cpn_typ, 'X')) = 'PAY-IN-KIND' OR lv_calc_typ IN (111, 823)) THEN
				lv_process_security_type := 'DBIBPK';
			 ELSIF (UPPER (lv_market_sector_des)) IN ('COMDTY', 'INDEX') THEN
				IF (lv_calc_investment_type = 'FT') AND lv_calc_security_type IN ('FT', 'FIFT') THEN
					lv_process_security_type := 'FTXXXX';
				END IF;
			ELSIF ( UPPER (lv_market_sector_des) IN ('CORP', 'GOVT', 'M-MKT') AND -- upper(nvl(clean(i_zero_cpn),'X')) = 'Y' and
				lv_calc_typ IN (4, 5, 6, 54, 107, 127, 166, 167, 171, 177, 273, 317, 352, 354, 447, 527, 529, 531, 593, 602, 676, 680, 684, 697, 710, 730, 821, 897, 903, 911, 917, 937, 939, 940, 977, 984, 994, 995, 1069, 1076)) OR (UPPER (i_collat_typ) = 'BILLS') THEN
					lv_process_security_type := 'DBDCST';
			ELSIF UPPER (lv_market_sector_des) IN ('CORP', 'GOVT', 'M-MKT') AND ( lv_calc_typ IN (7, 269, 791, 990) OR  (i_cpn_freq) = '0') THEN -- INTEREST@MTY or INTEREST AT MTY
				lv_process_security_type := 'DBIBMA';
			ELSIF UPPER (lv_market_sector_des) IN ('CORP', 'GOVT') AND UPPER (COALESCE (i_zero_cpn, 'X')) = 'N' AND COALESCE (lv_calc_typ, 0) NOT IN (7) AND -- INTEREST@MTY or INTEREST AT MTY
			  ( UPPER (i_series) LIKE '%CD%' OR UPPER (i_collat_typ)  = 'CERT OF DEPOSIT') THEN
				lv_process_security_type := 'DBIBST';
			ELSIF UPPER (lv_market_sector_des) = 'M-MKT' AND lv_calc_security_type IN ('CNTY', 'CP')  THEN
				lv_process_security_type        := 'DBIBST';
			ELSIF UPPER (lv_market_sector_des) = 'GOVT' AND lv_calc_typ IN (44, 175, 195, 314, 449, 450, 549, 621, 622, 648, 649, 836, 864, 906, 908, 934, 1025, 1103) THEN
				lv_process_security_type        := 'DBFLTP';
			ELSIF UPPER (lv_market_sector_des) IN ('CORP', 'GOVT') OR lv_calc_security_type IN ('TRML', 'DLDL', 'REVL', 'LOC') THEN 
				lv_process_security_type        := 'DBIBFD';
			ELSIF UPPER (lv_market_sector_des) = 'MUNI' THEN
				lv_process_security_type        := 'DBIBMU';
				IF lv_most_recent_reported_factor > 0 THEN 
					lv_process_security_type        := 'DBFBFB';
				END IF;
			ELSIF UPPER (lv_market_sector_des) = 'MTGE' THEN
				IF UPPER (COALESCE (i_mtg_tranche_typ_long, 'X')) LIKE '%IO%' AND UPPER (COALESCE (i_mtg_tranche_typ_long, 'X')) LIKE '%NTL%' THEN
					lv_process_security_type := 'DBFBIO';
				ELSIF UPPER (COALESCE (i_mtg_tranche_typ, 'X')) LIKE '%PO%' THEN
					lv_process_security_type := 'DBFBPO';
				ELSIF lv_calc_security_type = 'MTBA' THEN
					lv_process_security_type := 'DBTATA';
				ELSIF lv_calc_security_type = 'PJLN' THEN
					lv_process_security_type := 'DBFBFB';
				ELSE
					lv_process_security_type := 'DBFBFB';
				END IF;
			ELSIF UPPER (lv_market_sector_des) = 'PFD' THEN
				IF UPPER (COALESCE (i_cpn_typ, 'X')) = 'PAY-IN-KIND' THEN
					lv_process_security_type  := 'EQCSPK';
				ELSE
					lv_process_security_type := 'EQCSPF';
				END IF;
			ELSIF UPPER (lv_market_sector_des) = 'CURNCY' THEN
				lv_process_security_type := 'FTXXXX';
			ELSE
				RAISE INFO 'Could not derive a Process security type value';
			END IF;
	
		END IF;
		
  RETURN lv_process_security_type;
  END;                                  
$function$
/