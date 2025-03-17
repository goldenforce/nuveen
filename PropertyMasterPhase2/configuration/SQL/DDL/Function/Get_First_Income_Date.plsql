-- select get_first_income_date('11;EQTY;2 days;20221123;;;;;;;;;;','MTBA','EQ','DBIBST') from dual; -- 20221123
-- select get_first_income_date('11;EQTY;2 days;20221123;20231114;20231110;XRESET+;;;;;;;','MC','FI','DBIBST') from dual; -- 20231112
-- select get_first_income_date('11;EQTY;2 days;20221123;20231114;20231110;FTVA;;;;;;;','MC','FI','DBIBST') from dual; -- 20231112
-- select get_first_income_date('11;EQTY;2 days;20221123;20231114;20231110;DLY;;;;;;;','MC','FI','DBIBST') from dual; -- 20231112
-- select get_first_income_date('11;EQTY;2 days;20221123;20231111;;;;;;;;;','MC','FI','DBIBST') from dual; -- 20231109
-- select get_first_income_date('11;EQTY;2 days;20221123;;20231111;DLY;;;;;;;','MC','FI','DBIBST') from dual; -- NULL

-- select get_first_income_date('8;EQTY;2 days;20221123;20231111;;;Y;20241110;20211010;;;;','MC','FI','DBIBST') from dual; -- 20250510
-- select get_first_income_date('8;EQTY;2 days;20221123;20231111;;;Y;;20221010;;;;','MC','FI','DBIBST') from dual; -- 20230410
-- select get_first_income_date('8;EQTY;2 days;20221123;20231111;;;N;;20221010;Y;CUSIP-74347R669;20221212;20221112;','MTBA','FI','DBIBST') from dual;  -- 20221212

-- select get_first_income_date('8;EQTY;2 days;20221123;20231111;;;Y;;20221010;Y;CUSIP-74347R669;20221112;20220202;','MC','FI','DBDCST') from dual; -- 20221112

-- select get_first_income_date('8;EQTY;2 days;20221123;20231111;;;Y;;20221010;Y;20221212;20221112;','LOC','FT','DBDCST') from dual;  -- 20221110

--{$$-STATEMENT-$$}
CREATE OR REPLACE FUNCTION get_first_income_date ( inputStr VARCHAR, lv_calc_security_type VARCHAR, lv_investment_type VARCHAR, lv_process_security_type VARCHAR ) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
		lv_inputstr VARCHAR;
		lv_market_sector   VARCHAR ;
		lv_security_typ2 VARCHAR;
		lv_mtg_pay_delay_in VARCHAR;
		lv_mtg_pay_delay INTEGER;
		lv_first_cpn_dt VARCHAR;
		lv_mtg_first_pay_dt_tmp VARCHAR;
		lv_mtg_first_pay_dt DATE;
		lv_mtg_first_rst_dt VARCHAR;
		lv_mtg_tranche_typ VARCHAR;
		lv_zero_cpn VARCHAR;
		lv_first_settle_dt_tmp VARCHAR;
		lv_first_settle_dt DATE;
		lv_issue_dt_tmp VARCHAR;
		lv_issue_dt DATE;
		lv_is_perpetual  VARCHAR;
		lv_maturity VARCHAR;
		lv_calculated_issue_date VARCHAR;
	
		lv_first_income_date_return VARCHAR;
		
		lv_primary_asset VARCHAR;
		lv_primary_asset_id_type VARCHAR;
		lv_primary_asset_id VARCHAR;
		
	
    BEGIN
	
		lv_inputstr := inputStr;
		-- lv_market_sector
		lv_market_sector := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_market_sector: %', lv_market_sector;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_security_typ2
		lv_security_typ2 := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_security_typ2: %', lv_security_typ2;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_mtg_pay_delay_in
		lv_mtg_pay_delay_in := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_mtg_pay_delay_in: %', lv_mtg_pay_delay_in;
		
		IF (LENGTH(lv_mtg_pay_delay_in) >  0 ) THEN
			IF (STRPOS(lv_mtg_pay_delay_in,' ') > 0) THEN
				lv_mtg_pay_delay := TO_NUMBER(LEFT(lv_mtg_pay_delay_in,STRPOS(lv_mtg_pay_delay_in,' ')-1), '9999');
			ELSE
				lv_mtg_pay_delay := TO_NUMBER(lv_mtg_pay_delay_in,'9999');
			END IF;
		ELSE
			lv_mtg_pay_delay := 0;
		END IF;
		RAISE INFO 'lv_mtg_pay_delay: %', lv_mtg_pay_delay;
		
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_first_cpn_dt
		lv_first_cpn_dt := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_first_cpn_dt: %', lv_first_cpn_dt;
		
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_mtg_first_pay_dt_tmp
		lv_mtg_first_pay_dt_tmp := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_mtg_first_pay_dt_tmp: %', lv_mtg_first_pay_dt_tmp;
		
		IF (LENGTH(lv_mtg_first_pay_dt_tmp) > 0) THEN
			lv_mtg_first_pay_dt := TO_DATE (lv_mtg_first_pay_dt_tmp,'YYYYMMDD');
		ELSE
			lv_mtg_first_pay_dt := NULL;
		END IF;
		RAISE INFO 'lv_mtg_first_pay_dt: %', lv_mtg_first_pay_dt;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_mtg_first_rst_dt
		lv_mtg_first_rst_dt := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_mtg_first_rst_dt: %', lv_mtg_first_rst_dt;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_mtg_tranche_typ
		lv_mtg_tranche_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_mtg_tranche_typ: %', lv_mtg_tranche_typ;
		
			
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_zero_cpn
		lv_zero_cpn := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_zero_cpn: %', lv_zero_cpn;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_first_settle_dt_tmp
		lv_first_settle_dt_tmp := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_first_settle_dt_tmp: %', lv_first_settle_dt_tmp;
		
		IF (LENGTH(lv_first_settle_dt_tmp) > 0) THEN
			lv_first_settle_dt := TO_DATE (lv_first_settle_dt_tmp,'YYYYMMDD');
		ELSE
			lv_first_settle_dt := NULL;
		END IF;
		RAISE INFO 'lv_first_settle_dt: %', lv_first_settle_dt;
		
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_issue_dt_tmp
		lv_issue_dt_tmp := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_issue_dt_tmp: %', lv_issue_dt_tmp;
		
		IF (LENGTH(lv_issue_dt_tmp) > 0) THEN
			lv_issue_dt := TO_DATE (lv_issue_dt_tmp,'YYYYMMDD');
		ELSE
			lv_issue_dt := NULL;
		END IF;
		RAISE INFO 'lv_issue_dt: %', lv_issue_dt;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_is_perpetual
		lv_is_perpetual := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_is_perpetual: %', lv_is_perpetual;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_primary_asset
		lv_primary_asset := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_primary_asset: %', lv_primary_asset;
		
		lv_primary_asset_id_type := LEFT(lv_primary_asset,STRPOS(lv_primary_asset,'-')-1);
		lv_primary_asset_id := RIGHT(lv_primary_asset,LENGTH(lv_primary_asset)-STRPOS(lv_primary_asset,'-'));
		RAISE INFO 'lv_primary_asset_id_type: %', lv_primary_asset_id_type;
		RAISE INFO 'lv_primary_asset_id: %', lv_primary_asset_id;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_maturity
		lv_maturity := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_maturity: %', lv_maturity;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_calculated_issue_date
		lv_calculated_issue_date := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_calculated_issue_date: %', lv_calculated_issue_date;
		
			
		RAISE INFO 'lv_calc_security_type: %', lv_calc_security_type;
		RAISE INFO 'lv_investment_type: %', lv_investment_type;
		RAISE INFO 'lv_process_security_type: %', lv_process_security_type;
		
		-- Logic

		lv_first_income_date_return := lv_first_cpn_dt;
		
		IF (lv_calc_security_type = 'MTBA' AND lv_investment_type = 'FI') THEN
			IF (lv_primary_asset_id_type = 'CUSIP' AND SUBSTR (lv_primary_asset_id, 8, 1) IN ('1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C')) THEN
				IF (lv_calculated_issue_date != '') THEN
					lv_first_income_date_return := TO_CHAR((TO_DATE(lv_calculated_issue_date,'YYYYMMDD') + interval '1 month'),'YYYYMMDD');
				END IF;
			END IF;
		END IF;
		
		IF (lv_market_sector = '11' AND lv_calc_security_type != 'MTBA' AND lv_investment_type = 'FI' ) THEN
			IF (lv_mtg_first_rst_dt != '' AND UPPER(lv_mtg_tranche_typ) = 'XRESET+') THEN
				lv_first_income_date_return := TO_CHAR(lv_mtg_first_pay_dt - (lv_mtg_pay_delay * interval  '1 days'), 'YYYYMMDD');
			ELSIF (lv_mtg_first_rst_dt != '' AND UPPER (lv_mtg_tranche_typ) LIKE '%FTV%') THEN
				lv_first_income_date_return := TO_CHAR(lv_mtg_first_pay_dt - (lv_mtg_pay_delay * interval  '1 days'), 'YYYYMMDD');
			ELSIF (lv_mtg_first_rst_dt != '' AND UPPER (lv_mtg_tranche_typ) LIKE '%DLY%') THEN
				lv_first_income_date_return := TO_CHAR(lv_mtg_first_pay_dt - (lv_mtg_pay_delay * interval  '1 days'), 'YYYYMMDD');
			ELSIF (lv_security_typ2 != 'TBA' AND lv_mtg_first_pay_dt IS NOT NULL) THEN
				lv_first_income_date_return := TO_CHAR(lv_mtg_first_pay_dt - ( lv_mtg_pay_delay * interval  '1 days'), 'YYYYMMDD');
			ELSE
				lv_first_income_date_return := lv_mtg_first_rst_dt;
			END IF;
		END IF;
		
		IF (lv_zero_cpn    = 'Y') THEN
			IF (lv_first_settle_dt IS NOT NULL) THEN
				lv_first_income_date_return := TO_CHAR(lv_first_settle_dt + interval  '6 months','YYYYMMDD');
			ELSE 
				IF (lv_issue_dt IS NOT NULL) THEN
					lv_first_income_date_return := TO_CHAR(lv_issue_dt + interval  '6 months','YYYYMMDD');
				END IF;
			END IF;
		END IF;
		
		IF (lv_process_security_type IN ('DBDCST', 'DBIBMA')) THEN
			lv_first_income_date_return := lv_maturity;
		END IF;

		IF (lv_calc_security_type IN ('TRML', 'DLDL', 'REVL', 'LOC')) THEN
			IF (lv_issue_dt IS NOT NULL) THEN	
				lv_first_income_date_return := TO_CHAR(lv_issue_dt + interval '1 month','YYYYMMDD');
			END IF;
		END IF;

 RETURN lv_first_income_date_return;
  
  EXCEPTION
		WHEN OTHERS
		THEN
			RAISE NOTICE 'SQL ERROR: %', SQLERRM;
 
  END;                                  
$function$
/