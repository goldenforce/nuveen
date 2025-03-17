-- select get_last_income_date('','MTBA','FI','DBIBST') from dual; -- NULL
-- select get_last_income_date('8;2 days;20211111;20211010;20251110;Y;Y;1_M;X;20200101;CUSIP-74347R669;20250505;','MTBA','FI','DBIBST') from dual; -- 20251008

-- select get_last_income_date('8;2 days;20211111;20211010;;Y;Y;1_M;X;20200101;CUSIP-74347R669;20250505;','MTBA','FI','DBIBST') from dual; -- 20200101

-- select get_last_income_date('8;2 days;20211111;20211010;;Y;Y;1_M;X;;CUSIP-74347R669;20250505;','MTBA','FI','DBIBST') from dual; -- 20250411

-- select get_last_income_date('8;2 days;20211111;20211010;;Y;Y;1_M;X;;CUSIP-74347R669;20250505;','MTBA','FI','DBIBMA') from dual; -- 20250505

-- select get_last_income_date('8;2 days;20211111;20211010;;Y;Y;1_M;X;;CUSIP-74347R669;20250505;','LOC','FI','') from dual; -- 20250410
-- select get_last_income_date('11;2 days;20211111;20211010;;Y;N;1_M;X;;CUSIP-74347R669;20250505;','MC','FI','') from dual; -- 20250410

-- select get_last_income_date('8;2 days;20211111;20211010;;Y;N;1_M;X;20260804;CUSIP-74347R669;20250505;','MC','FI','') from dual; -- 20260804
-- select get_last_income_date('8;2 days;20211111;20211010;;Y;N;1_M;X;;CUSIP-74347R669;20250505;','MC','FI','') from dual; -- 20250411
-- select get_last_income_date('8;2 days;20211111;20211010;20240701;N;N;1_M;X;20220808;CUSIP-74347R669;20250505;','MTBA','FI','DBIBST') from dual;  -- 20240530

-- select get_last_income_date('8;2 days;20211111;20211010;;Y;N;1_M;PREREFUNDED;20260804;CUSIP-74347R669;20250505;','MUNI','FI','') from dual; -- NULL

--{$$-STATEMENT-$$}

CREATE OR REPLACE FUNCTION get_last_income_date ( inputStr VARCHAR, lv_calc_security_type VARCHAR, lv_investment_type VARCHAR, lv_process_security_type VARCHAR ) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
		lv_inputstr VARCHAR;
		lv_market_sector   VARCHAR ;
		lv_mtg_pay_delay_in VARCHAR;
		lv_mtg_pay_delay INTEGER;
		lv_first_cpn_dt VARCHAR;
		lv_first_income_date VARCHAR;
		lv_calculated_mat_date VARCHAR;
		lv_is_perpetual  VARCHAR;
		lv_zero_cpn VARCHAR;
		lv_coupon_freq_code VARCHAR;
		lv_muni_adv_rfnd_typ VARCHAR;
		lv_penultimate_cpn_dt VARCHAR;
		lv_maturity_in VARCHAR;
				
		lv_maturity VARCHAR;
		lv_maturity_dt DATE;
		lv_last_day_maturity INTEGER;
		lv_day INTEGER;
		lv_first_income_date_6month VARCHAR;
		lv_last_income_month1 DATE;
		lv_last_income_month2 DATE;
	
		lv_last_income_date DATE := NULL;
		lv_last_income_date_return VARCHAR;
		
		lv_primary_asset VARCHAR;
		lv_primary_asset_id_type VARCHAR;
		lv_primary_asset_id VARCHAR;
	
    BEGIN
	
		lv_inputstr := inputStr;
		-- lv_market_sector
		lv_market_sector := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_market_sector: %', lv_market_sector;
		
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
		-- lv_first_income_date
		lv_first_income_date := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_first_income_date: %', lv_first_income_date;
		
			
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_calculated_mat_date
		lv_calculated_mat_date := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_calculated_mat_date: %', lv_calculated_mat_date;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_is_perpetual
		lv_is_perpetual := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_is_perpetual: %', lv_is_perpetual;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_zero_cpn
		lv_zero_cpn := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_zero_cpn: %', lv_zero_cpn;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_coupon_freq_code
		lv_coupon_freq_code := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_coupon_freq_code: %', lv_coupon_freq_code;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_muni_adv_rfnd_typ
		lv_muni_adv_rfnd_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_muni_adv_rfnd_typ: %', lv_muni_adv_rfnd_typ;
		
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_penultimate_cpn_dt
		lv_penultimate_cpn_dt := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_penultimate_cpn_dt: %', lv_penultimate_cpn_dt;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_primary_asset
		lv_primary_asset := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_primary_asset: %', lv_primary_asset;
		
		lv_primary_asset_id_type := LEFT(lv_primary_asset,STRPOS(lv_primary_asset,'-')-1);
		lv_primary_asset_id := RIGHT(lv_primary_asset,LENGTH(lv_primary_asset)-STRPOS(lv_primary_asset,'-'));
		RAISE INFO 'lv_primary_asset_id_type: %', lv_primary_asset_id_type;
		RAISE INFO 'lv_primary_asset_id: %', lv_primary_asset_id;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_maturity_in
		lv_maturity_in := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_maturity_in: %', lv_maturity_in;
		
		lv_maturity := lv_maturity_in;
		IF (lv_maturity != '') THEN
			lv_maturity_dt := TO_DATE(lv_maturity_in, 'YYYYMMDD');
			RAISE INFO 'lv_maturity_dt: %',lv_maturity_dt;
		END IF;
			
		RAISE INFO 'lv_calc_security_type: %', lv_calc_security_type;
		RAISE INFO 'lv_investment_type: %', lv_investment_type;
		RAISE INFO 'lv_process_security_type: %', lv_process_security_type;
		
		
		-- Logic
	IF (lv_penultimate_cpn_dt != '') THEN
		lv_last_income_date := TO_DATE(lv_penultimate_cpn_dt,'YYYYMMDD');
	END IF;
	
	IF (lv_calc_security_type = 'MTBA' AND lv_investment_type = 'FI') THEN
		IF (lv_primary_asset_id_type = 'CUSIP' AND SUBSTR (lv_primary_asset_id, 8, 1) IN ('1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C')) THEN
			IF (lv_calculated_mat_date != '') THEN
				lv_last_income_date := (TO_DATE(lv_calculated_mat_date,'YYYYMMDD') - interval '1 month' - (lv_mtg_pay_delay * interval '1 days'));
			END IF;
		END IF;
	END IF;

	IF (lv_maturity_dt IS NOT NULL) THEN
		lv_last_day_maturity := TO_NUMBER(TO_CHAR(date_trunc('month', lv_maturity_dt) + interval '1 month - 1 day', 'DD'),'99');
	END IF;
	RAISE INFO 'lv_last_day_maturity: %', lv_last_day_maturity;
		
	IF (lv_market_sector = '11' AND lv_calc_security_type != 'MTBA' AND lv_investment_type = 'FI' ) THEN
		IF(lv_first_income_date != '' AND lv_maturity != '') THEN
			IF (TO_NUMBER(SUBSTRING(lv_first_income_date,7,2),'99') > lv_last_day_maturity) THEN
				lv_day := lv_last_day_maturity;
			ELSE
				lv_day := TO_NUMBER(SUBSTRING(lv_first_income_date,7,2),'99');
			END IF;
			
			IF(lv_coupon_freq_code != '' AND SUBSTRING(lv_coupon_freq_code,STRPOS(lv_coupon_freq_code,'_')+1,1) = 'M') THEN
				lv_last_income_date := TO_DATE(SUBSTRING(lv_maturity,1,6) ||  TO_CHAR(lv_day,'99'),'YYYYMMDD') - 
										(TO_NUMBER(LEFT(lv_coupon_freq_code,STRPOS(lv_coupon_freq_code,'_')-1),'999') * interval '1 month');
			END IF;
		END IF;
	END IF;
	
	IF (lv_penultimate_cpn_dt = '' AND lv_market_sector != '11' ) THEN
		IF(lv_first_cpn_dt != '' AND lv_maturity != '') THEN
			IF (TO_NUMBER(SUBSTRING(lv_first_cpn_dt,7,2),'99') > lv_last_day_maturity) THEN
				lv_day := lv_last_day_maturity;
			ELSE
				lv_day := TO_NUMBER(SUBSTRING(lv_first_cpn_dt,7,2),'99');
			END IF;
			
			IF(lv_coupon_freq_code != '' AND STRPOS(lv_coupon_freq_code,'_') >0 AND SUBSTRING(lv_coupon_freq_code,STRPOS(lv_coupon_freq_code,'_')+1,1) = 'M') THEN
				lv_last_income_date := TO_DATE(SUBSTRING(lv_maturity,1,6) ||  TO_CHAR(lv_day,'99'),'YYYYMMDD') - 
										(TO_NUMBER(LEFT(lv_coupon_freq_code,STRPOS(lv_coupon_freq_code,'_')-1),'999')  * interval '1 month');
			END IF;
		END IF;
	END IF;
	
	IF (lv_zero_cpn = 'Y') THEN
		IF (lv_first_income_date != '' AND lv_maturity != '') THEN
			RAISE INFO 'FIRST : %', TO_NUMBER(SUBSTRING(lv_first_income_date,7,2),'99');
			RAISE INFO 'DATE: %',TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date,5,2) || '01','YYYYMMDD') + interval '1 month - 1 day';
			RAISE INFO 'CHAR DATE: %',TO_CHAR(TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date,5,2) || '01','YYYYMMDD') + interval '1 month - 1 day','DD');
			
			
			IF (TO_NUMBER(SUBSTRING(lv_first_income_date,7,2),'99') > TO_NUMBER(TO_CHAR(TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date,5,2) || '01','YYYYMMDD') + interval '1 month - 1 day', 'DD'),'99')) THEN
				lv_last_income_month1 := TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date,5,2) || '01','YYYYMMDD');
			ELSE
				lv_last_income_month1 := TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date,5,4),'YYYYMMDD');
			END IF;
			
			RAISE INFO 'lv_last_income_month1:%', lv_last_income_month1;
		
			lv_first_income_date_6month := TO_CHAR(TO_DATE(lv_first_income_date,'YYYYMMDD') - interval '6 months','YYYYMMDD');
		
			IF (TO_NUMBER(SUBSTRING(lv_first_income_date,7,2),'99') > TO_NUMBER(TO_CHAR(TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date_6month,5,2) || '01','YYYYMMDD') + interval '1 month - 1 day', 'DD'),'99')) THEN
				lv_last_income_month2 := TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date_6month,5,2) || '01','YYYYMMDD');
			ELSE
				lv_last_income_month2 := TO_DATE(SUBSTRING(lv_maturity,1,4) || SUBSTRING(lv_first_income_date_6month,5,2) || SUBSTRING(lv_first_income_date,7,2),'YYYYMMDD');
			END IF;
			
			RAISE INFO 'lv_last_income_month2: %', lv_last_income_month2;

		-- if both last income dates are less than maturity date then find the closest one.
			IF lv_last_income_month1 < lv_maturity_dt AND lv_last_income_month2 < lv_maturity_dt THEN
				IF (lv_maturity_dt - lv_last_income_month1) < (lv_maturity_dt - lv_last_income_month2) THEN
					lv_last_income_date := lv_last_income_month1;
				ELSE
					lv_last_income_date := lv_last_income_month2;
				END IF;
			END IF;
			-- if last income_date1 is less than maturity date and last_income_date2 is greater than or equal to
			-- maturity date then assign last income_date1
			IF lv_last_income_date IS NULL AND lv_last_income_month1 < lv_maturity_dt AND lv_last_income_month2 >= lv_maturity_dt THEN
				lv_last_income_date  := lv_last_income_month1;
			END IF;
			-- if last income_date1 is greater that or equal to maturity date and last_income_date2 is less than
			-- maturity date then assign last income_date2
			IF lv_last_income_date IS NULL AND lv_last_income_month1 >= lv_maturity_dt AND lv_last_income_month2 < lv_maturity_dt THEN
				lv_last_income_date  := lv_last_income_month2;
			END IF;
			-- if both last_income dates are greater than maturity date then subtract one year from last_income_date1
			-- assign to last_income_date
			IF lv_last_income_date IS NULL AND lv_last_income_month1 >= lv_maturity_dt AND lv_last_income_month2 >= lv_maturity_dt THEN
				lv_last_income_date  :=  (lv_last_income_month1 - interval '12 months' );
			END IF;
			RAISE INFO 'lv_last_income_date: %',lv_last_income_date;
		END IF;
	END IF;

	IF (lv_process_security_type IN ('DBDCST', 'DBIBMA')) THEN
		lv_last_income_date := lv_maturity_dt;
	END IF;
	
	IF lv_calc_security_type IN ('TRML', 'DLDL', 'REVL', 'LOC') THEN
		IF (lv_first_income_date != '' AND lv_maturity != '') THEN --and lv_secmaster_history.mat_date is not null then
			IF (TO_NUMBER(SUBSTRING(lv_first_income_date,7,2),'99') > lv_last_day_maturity) THEN
				lv_day := lv_last_day_maturity;
			ELSE
				lv_day := TO_NUMBER(SUBSTRING(lv_first_income_date,7,2),'99');
			END IF;
			
			lv_last_income_date := TO_DATE(SUBSTRING(lv_maturity,1,6) ||  TO_CHAR(lv_day,'99'),'YYYYMMDD') - interval '1 month';
		END IF;
	END IF;
	
	IF  ( lv_calc_security_type = 'MUNI' AND lv_muni_adv_rfnd_typ = 'PREREFUNDED' ) THEN
		lv_last_income_date := NULL;
	END IF;
	
	IF (lv_last_income_date IS NOT NULL) THEN
		lv_last_income_date_return := TO_CHAR(lv_last_income_date,'YYYYMMDD');
	END IF;
			
  RETURN lv_last_income_date_return;
  
  EXCEPTION
		WHEN OTHERS
		THEN
			RAISE NOTICE 'SQL ERROR: %', SQLERRM;
 
  END;                                  
$function$
/