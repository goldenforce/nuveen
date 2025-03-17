-- select get_class_name('INDEX;CURRENCY;INDEX;Equity;International;;','EQ','EQ') from dual; --MF INTL EQUITY
-- select get_class_name('INDEX;CURRENCY;INDEX;Debt;XY;;;','EQ','EQ') from dual; -- MF FIXED
-- select get_class_name('INDEX;CURRENCY;INDEX;Debt;Asset Allocation;','EQ','EQ') from dual; -- MF FIXED
-- select get_class_name('INDEX;CURRENCY;INDEX;Equity;Asset Allocation;','EQ','EQ') from dual; -- MF EQUITY
-- select get_class_name('INDEX;CURRENCY;INDEX;Equity;Asset Allocation;','MC','EQ') from dual;  --STOCK
-- select get_class_name('INDEX;CURRENCY;INDEX;;;','XY','EQ') from dual; -- STOCK
-- select get_class_name('INDEX;CURRENCY;INDEX;;;','XY','OP') from dual; -- STOCK
-- select get_class_name('INDEX;CURRENCY;INDEX;;;','XY','') from dual; -- STOCK
-- select get_class_name('CORP;CURRENCY;INDEX;;;','XY','FI') from dual; -- BOND
-- select get_class_name('CORP;CURRENCY;INDEX;;;','XY','ST') from dual; -- BOND
-- select get_class_name('CORP;CURRENCY;;;','','FT') from dual; -- BOND
-- select get_class_name('CORP;FINANCIAL COMMODITY;;;','','FT') from dual; -- BOND
-- select get_class_name('CORP;INDEX;;;','','FT') from dual; -- STOCK
-- select get_class_name('CORP;;INDEX;;','','FT') from dual; -- BOND
-- select get_class_name('CORP;;;;;EQUITY INDEX;','','FT') from dual; -- STOCK
-- select get_class_name('CORP;;;;;BOND','','FT') from dual; -- BOND
-- select get_class_name('CORP;;;;;','','FT') from dual; -- OTHER ASSETS
-- select get_class_name('CORP;;;;;','','') from dual; -- OTHER ASSETS

-- FINANCIAL COMMODITY
-- Negative
-- select get_class_name('INDEX;CURRENCY;INDEX;;;','XY','FI') from dual; -- STOCK
-- select get_class_name('INDEX;CURRENCY','','') from dual; --STOCK

--{$$-STATEMENT-$$}
CREATE OR REPLACE FUNCTION get_class_name ( inputStr VARCHAR, lv_calc_security_type VARCHAR, lv_investment_type VARCHAR) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
		lv_inputstr VARCHAR;
		lv_class_name VARCHAR(100) := NULL;
  		lv_market_sector_des     VARCHAR ;
        lv_security_type     VARCHAR;
		lv_security_typ2   VARCHAR;
		lv_hb_asset_class_focus VARCHAR;
		lv_fund_geo_focus           VARCHAR;
    	lv_futures_category             VARCHAR;
				
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
		-- lv_hb_asset_class_focus
		lv_hb_asset_class_focus := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_hb_asset_class_focus: %', lv_hb_asset_class_focus;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_fund_geo_focus
		lv_fund_geo_focus := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_fund_geo_focus: %', lv_fund_geo_focus;

		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- lv_futures_category
		lv_futures_category := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		RAISE INFO 'lv_futures_category: %', lv_futures_category;
		
		RAISE INFO 'lv_calc_security_type: %', lv_calc_security_type;
		RAISE INFO 'lv_investment_type: %', lv_investment_type;
			
			
     IF ( lv_calc_security_type != 'MC' and TRIM(lv_investment_type) = 'EQ' and UPPER(lv_hb_asset_class_focus) = 'EQUITY' and UPPER(lv_fund_geo_focus) = 'INTERNATIONAL' ) THEN
  		lv_class_name := 'MF INTL EQUITY';
  ELSIF ( lv_calc_security_type != 'MC' and TRIM(lv_investment_type) = 'EQ' and UPPER(lv_hb_asset_class_focus) in ('DEBT','ASSET ALLOCATION')) THEN
		lv_class_name := 'MF FIXED';
  ELSIF ( lv_calc_security_type != 'MC' and TRIM(lv_investment_type) = 'EQ' and UPPER(lv_hb_asset_class_focus) = 'EQUITY') THEN
  		lv_class_name := 'MF EQUITY';
  ELSIF ( lv_calc_security_type = 'MC' and TRIM(lv_investment_type) = 'EQ' ) THEN
  		lv_class_name := 'STOCK';
  ELSIF ( TRIM(lv_investment_type) = 'EQ') THEN
		lv_class_name := 'STOCK';
  ELSIF ( TRIM(lv_investment_type) = 'OP' ) THEN
		lv_class_name := 'STOCK';
  ELSIF COALESCE(upper(TRIM(lv_market_sector_des)),'X') = 'INDEX' THEN
		lv_class_name := 'STOCK';
  ELSIF ( TRIM (lv_investment_type)     = 'FI' or TRIM (lv_investment_type)     = 'ST') THEN
		lv_class_name := 'BOND';
  ELSIF ( TRIM (LV_INVESTMENT_TYPE)     = 'FT') THEN
		CASE
		WHEN UPPER(lv_security_type ) LIKE 'FINANCIAL COMMODITY%' THEN lv_class_name := 'BOND';
		WHEN UPPER(lv_security_type ) LIKE 'CURRENCY%' THEN lv_class_name := 'BOND';
		WHEN UPPER(lv_security_type ) LIKE '%INDEX%' THEN lv_class_name := 'STOCK';
		WHEN UPPER(lv_security_typ2) LIKE 'INDEX' THEN lv_class_name := 'BOND';
		WHEN UPPER(lv_futures_category) IN ('EQUITY INDEX')  THEN lv_class_name := 'STOCK'; --lv_futures_category(FUTURES_CATEGORY)
		WHEN UPPER(lv_futures_category) IN ('BOND')  THEN lv_class_name := 'BOND';
		ELSE
		lv_class_name := 'OTHER ASSETS';
		END	CASE;
  ELSE
		lv_class_name := 'OTHER ASSETS';
  END IF;
		
  RETURN lv_class_name;
  END;                                  
$function$
/