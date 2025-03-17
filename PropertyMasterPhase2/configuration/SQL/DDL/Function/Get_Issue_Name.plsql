
-- Equity
-- select get_issue_name('EQUITY;Index Option;HKDES;HKNAME;;;;;;','EO','') from dual; -- HKDES
-- select get_issue_name('EQUITY;;HKDES;HKNAME;;;;;;','IO','') from dual; -- HKDES
-- select get_issue_name('EQUITY;;HKDES;HKNAME;;;;;;','EQ','') from dual; -- HKNAME

-- FI
-- select get_issue_name('PFD;;HKDES;HKNAME;HKSER;1.95;20220101;;;','EQ','') from dual; -- HKNAME 1.95 Pfd Series HKSER 01/01/2022
-- select get_issue_name('PFD;;HKDES;HKNAME;HKSER;0.0;20220101;;;','EQ','') from dual; -- HKNAME 0 Pfd Series HKSER 01/01/2022
-- select get_issue_name('PFD;;HKDES;HKNAME;HKSER;.000;20220101;;;','EQ','') from dual; -- HKNAME 0 Pfd Series HKSER 01/01/2022
-- select get_issue_name('PFD;;HKDES;HKNAME;;1.95;20220101;;;','EQ','') from dual; -- HKNAME 1.95 Pfd 01/01/2022
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20220101;HKISSR;20210101;','MTBA','') from dual; -- HKISSR TBA 1.95 01/01/2021
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20220101;;20210101;','MTBA','') from dual; -- HKNAME TBA 1.95 01/01/2021
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20220101;;20210101;','MCMO','FI') from dual; -- HKNAME 1.95 01/01/2022
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20230101;;20210101;','CMBS','ST') from dual; -- HKNAME 1.95 01/01/2023
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20230101;;20210101;','MC','ST') from dual; -- HKNAME 1.95 01/01/2023
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20230101;HKISSR;20210101;','MC','ST') from dual; -- HKISSR 1.95 01/01/2023
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20220101;HKISSR;20210101;','M','') from dual; -- HKNAME
-- select get_issue_name('GOVT;;HKDES;HKNAME;HKSER;1.95;20230101;;20210101;','MC','EQ') from dual;  -- HKNAME

--{$$-STATEMENT-$$}
CREATE OR REPLACE FUNCTION get_issue_name ( inputStr VARCHAR, lv_calc_security_type VARCHAR, lv_investment_type VARCHAR) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
		lv_inputstr VARCHAR;
		lv_issue_name VARCHAR(100) := NULL;
  		lv_market_sector_des     VARCHAR ;
		lv_security_type     VARCHAR;
        i_security_des     VARCHAR;
		i_name   VARCHAR;
		i_series VARCHAR;
		lv_cpn  VARCHAR;
		lv_mat_date_tmp VARCHAR;
    	lv_mat_date VARCHAR;
		lv_issuer_name VARCHAR;
		lv_first_settle_dt_tmp VARCHAR;
		lv_first_settle_dt DATE;		
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
		-- i_security_des
		i_security_des := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_security_des: %', i_security_des;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_name
		i_name := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_name: %', i_name;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_series
		i_series := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'i_series: %', i_series;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_cpn
		lv_cpn := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		
		IF(LENGTH(lv_cpn) > 0) THEN
				lv_cpn := RTRIM(TRIM(lv_cpn,'0'),'.');
				IF(LENGTH(lv_cpn) <= 0) THEN
					lv_cpn := '0';
				END IF;
		END IF;
		RAISE INFO 'lv_cpn: %', lv_cpn;

		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_mat_date_tmp
		lv_mat_date_tmp := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_mat_date_tmp: %', lv_mat_date_tmp;
		
		IF (lv_mat_date_tmp != '') THEN
			lv_mat_date := TO_CHAR(TO_DATE(lv_mat_date_tmp,'YYYYMMDD'),'MM/DD/YYYY');
		ELSE
			lv_mat_date := '';
		END IF;
		RAISE INFO 'lv_mat_date: %', lv_mat_date;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_issuer_name
		lv_issuer_name := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_issuer_name: %', lv_issuer_name;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_first_settle_dt_tmp
		lv_first_settle_dt_tmp := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_first_settle_dt_tmp: %', lv_first_settle_dt_tmp;

		lv_first_settle_dt = TO_DATE(lv_first_settle_dt_tmp,'YYYYMMDD');
	
		RAISE INFO 'lv_calc_security_type: %', lv_calc_security_type;
		RAISE INFO 'lv_investment_type: %', lv_investment_type;
			
				
	IF ( (UPPER(lv_market_sector_des) = 'EQUITY') OR (UPPER(lv_security_type) = 'INDEX OPTION')) THEN
		 IF (lv_calc_security_type IN ('EO','IO')) THEN
			lv_issue_name := i_security_des ;
		ELSE
			lv_issue_name := i_name;
		END IF;
	ELSE
		 IF (UPPER (lv_market_sector_des) = 'PFD') THEN
			IF (LENGTH(i_series) != 0) THEN
				lv_issue_name := TRIM ( i_name || ' ' || lv_cpn || ' Pfd Series ' || i_series || ' ' || lv_mat_date);
			ELSE
				lv_issue_name := TRIM ( i_name || ' ' || lv_cpn || ' Pfd ' || lv_mat_date);
			END IF;
		ELSIF (lv_calc_security_type = 'MTBA') THEN
			IF (LENGTH(lv_issuer_name) != 0) THEN
				lv_issue_name := TRIM ( SUBSTR (lv_issuer_name, 1, 25) || ' TBA ' ||  lv_cpn || ' ' || TO_CHAR (lv_first_settle_dt, 'MM/DD/YYYY'));
			ELSE
				lv_issue_name := TRIM ( SUBSTR (i_name, 1, 25) || ' TBA ' ||  lv_cpn || ' ' || TO_CHAR (lv_first_settle_dt, 'MM/DD/YYYY'));
			END IF;
		ELSIF (lv_calc_security_type != 'MTBA' AND lv_investment_type IN ('FI', 'ST')) THEN
			IF (lv_calc_security_type IN ('AB', 'MBS', 'MCMO', 'CMBS')) THEN
				lv_issue_name := TRIM ( SUBSTR (i_name, 1, 25) || ' ' || lv_cpn || ' ' || lv_mat_date);
			ELSE
				IF (LENGTH(lv_issuer_name) != 0) THEN
					lv_issue_name := TRIM ( SUBSTR ( lv_issuer_name, 1, 25) || ' ' || lv_cpn || ' ' || lv_mat_date);
				ELSE
					lv_issue_name := TRIM ( SUBSTR (i_name, 1, 25) || ' ' || lv_cpn || ' ' || lv_mat_date);
				END IF;
			END IF;
		ELSE
			lv_issue_name := i_name;
		END IF;
	END if;
		
  RETURN lv_issue_name;
 
EXCEPTION
   WHEN OTHERS
   THEN
      RAISE NOTICE 'SQL ERROR: %', SQLERRM;
	  
  END;                                  
$function$
/