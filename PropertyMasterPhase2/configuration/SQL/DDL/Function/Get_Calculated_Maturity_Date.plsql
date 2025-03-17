CREATE OR REPLACE FUNCTION get_calculated_maturity_Date ( inputStr VARCHAR, lv_calc_security_type VARCHAR, lv_investment_type VARCHAR, lv_primary_asset VARCHAR ) 
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
		lv_inputstr VARCHAR;
		lv_cal_issue_date VARCHAR(10);
		lv_calculated_issue_date DATE;
		lv_calculated_mat_date DATE;
		lv_calculated_mat_date_return VARCHAR;
  		lv_market_sector_des     VARCHAR ;
		lv_primary_asset_id_type VARCHAR;
		lv_primary_asset_id VARCHAR;
		lv_effective_date_tmp VARCHAR;
		lv_effective_date DATE;
		lv_mtg_pay_delay_in VARCHAR;
		lv_mtg_pay_delay INTEGER;
		lv_calculated_issue_date_return VARCHAR;
    BEGIN
	
		lv_inputstr := inputStr;
		-- lv_market_sector_des
		lv_market_sector_des := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_market_sector_des: %', lv_market_sector_des;
		
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
			lv_mtg_pay_delay = 0;
		END IF;
		RAISE INFO 'lv_mtg_pay_delay: %', lv_mtg_pay_delay;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_effective_date_tmp
		lv_effective_date_tmp := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_effective_date_tmp: %', lv_effective_date_tmp;
		
		lv_effective_date := TO_DATE (lv_effective_date_tmp,'MM-DD-YYYY');
		RAISE INFO 'lv_effective_date: %', lv_effective_date;
		
			
		RAISE INFO 'lv_calc_security_type: %', lv_calc_security_type;
		RAISE INFO 'lv_investment_type: %', lv_investment_type;
		
			
		--SELECT ISS_ID INTO lv_primary_asset FROM FT_T_ISID WHERE ID_CTXT_TYP='NVNPRMID' AND ISS_ID like '%-%' AND END_TMS IS NULL and INSTR_ID IN (SELECT INSTR_ID FROM FT_T_ISID WHERE (ISS_ID  = lv_bbidentifiers OR ISS_ID = lv_bbgidentifiers) AND END_TMS IS NULL);
		
		RAISE INFO 'lv_primary_asset: %', lv_primary_asset;
		
		lv_primary_asset_id_type := LEFT(lv_primary_asset,STRPOS(lv_primary_asset,'-')-1);
		lv_primary_asset_id := RIGHT(lv_primary_asset,LENGTH(lv_primary_asset)-STRPOS(lv_primary_asset,'-'));
		RAISE INFO 'lv_primary_asset_id_type: %', lv_primary_asset_id_type;
		RAISE INFO 'lv_primary_asset_id: %', lv_primary_asset_id;

		
	IF (UPPER (lv_market_sector_des) NOT IN ('EQUITY','INDEX')) THEN
		IF lv_calc_security_type = 'MTBA' AND lv_investment_type = 'FI' THEN
			IF lv_primary_asset_id_type = 'CUSIP' AND SUBSTR (lv_primary_asset_id, 8, 1) IN ('1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C') THEN
				-- derive issue date
				-- year logic
				IF DATE_PART ('month',lv_effective_date) IN (10, 11, 12) AND SUBSTR (lv_primary_asset_id, 8, 1) IN ('1', '2', '3') THEN
					lv_cal_issue_date := TO_CHAR ( TO_NUMBER (TO_CHAR (lv_effective_date, 'yyyy'),'9999') + 1, '9999');
				ELSE
					lv_cal_issue_date := TO_CHAR (lv_effective_date, 'yyyy');
				END IF;
				-- month logic
				IF SUBSTR (lv_primary_asset_id, 8, 1) IN ('1', '2', '3', '4', '5', '6', '7', '8', '9') THEN
					lv_cal_issue_date := lv_cal_issue_date || '0' || SUBSTR (lv_primary_asset_id, 8, 1) || '';
				ELSIF SUBSTR (lv_primary_asset_id, 8, 1) = 'A' THEN
					lv_cal_issue_date := lv_cal_issue_date || '10';
				ELSIF SUBSTR (lv_primary_asset_id, 8, 1) = 'B' THEN
					lv_cal_issue_date := lv_cal_issue_date || '11';
				ELSIF SUBSTR (lv_primary_asset_id, 8, 1) = 'C' THEN
					lv_cal_issue_date := lv_cal_issue_date || '12';
				END IF;
				-- date logic
				lv_cal_issue_date := lv_cal_issue_date || '01';
      
				RAISE INFO 'lv_cal_issue_date: %', lv_cal_issue_date;
	  
	  -- convert to date format
      --cref.iob_sdh.convert_date (clean (lv_cal_issue_date), lc_standard_date_format, lv_calculated_issue_date);
	  
				lv_calculated_issue_date := TO_DATE(lv_cal_issue_date,'YYYYMMDD');
				lv_calculated_issue_date_return := TO_CHAR(TO_DATE(lv_cal_issue_date,'YYYYMMDD'),'YYYYMMDD');
     
				IF SUBSTR (lv_primary_asset_id, 7, 1) IN ('1', '2', '3', '4', '5', '6') THEN
					IF SUBSTR (lv_primary_asset_id, 7, 1)    = '1' THEN
						lv_calculated_mat_date := lv_calculated_issue_date + interval  '60 months' +  ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days');
					ELSIF SUBSTR (lv_primary_asset_id, 7, 1) = '2' THEN
						--lv_calculated_mat_date := ADD_MONTHS (lv_calculated_issue_date, 84) + COALESCE (lv_mtg_pay_delay, 0);
						lv_calculated_mat_date := lv_calculated_issue_date + interval  '84 months' + ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days');
					ELSIF SUBSTR (lv_primary_asset_id, 7, 1) = '3' THEN
						lv_calculated_mat_date := lv_calculated_issue_date + interval  '120 months' + ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days');
					ELSIF SUBSTR (lv_primary_asset_id, 7, 1) = '4' THEN
						lv_calculated_mat_date := lv_calculated_issue_date + interval  '180 months' + ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days');
					ELSIF SUBSTR (lv_primary_asset_id, 7, 1) = '5' THEN
						lv_calculated_mat_date := lv_calculated_issue_date + interval  '240 months' + ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days');
					ELSIF SUBSTR (lv_primary_asset_id, 7, 1) = '6' THEN
						lv_calculated_mat_date := lv_calculated_issue_date + interval  '360 months' + ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days');
					END IF;
				END IF;
				--lv_secmaster_history.mat_date := lv_calculated_mat_date;
				--lv_maturity := lv_calculated_mat_date;
			END IF;
		END IF;

			lv_calculated_mat_date_return := TO_CHAR(lv_calculated_mat_date,'YYYYMMDD');
		
	END if;
		
  RETURN lv_calculated_issue_date_return || '-' || lv_calculated_mat_date_return;
  
  EXCEPTION
		WHEN OTHERS
		THEN
			RAISE NOTICE 'SQL ERROR: %', SQLERRM;
 
  END;                                  
$function$
