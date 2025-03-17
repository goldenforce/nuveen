-- select get_prev_coupon_date('20221119','5 days','11-21-2022') from dual; -- 20221114
-- select get_prev_coupon_date('20221127','5 days','11-21-2022') from dual; -- empty

--{$$-STATEMENT-$$}
CREATE OR REPLACE FUNCTION get_prev_coupon_date ( lv_prev_cpn_dt_in VARCHAR, lv_mtg_pay_delay_in VARCHAR, lv_current_day_in VARCHAR) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
		lv_prev_cpn_dt DATE;
		lv_mtg_pay_delay INTEGER;
		lv_current_dt DATE;
		prev_cpn_dt DATE;
		lv_prev_cpn_dt_return VARCHAR := NULL;
    BEGIN
	
		IF (lv_prev_cpn_dt_in IS NOT NULL AND LENGTH(lv_prev_cpn_dt_in) >  0 ) THEN
			lv_prev_cpn_dt := TO_DATE(lv_prev_cpn_dt_in, 'YYYYMMDD');
		END IF;
		RAISE INFO 'lv_prev_cpn_dt: %', lv_prev_cpn_dt;
		
		IF (lv_mtg_pay_delay_in IS NOT NULL AND LENGTH(lv_mtg_pay_delay_in) >  0 ) THEN
			IF (STRPOS(lv_mtg_pay_delay_in,' ') > 0) THEN
				lv_mtg_pay_delay := TO_NUMBER(LEFT(lv_mtg_pay_delay_in,STRPOS(lv_mtg_pay_delay_in,' ')-1), '9999');
			ELSE
				lv_mtg_pay_delay := TO_NUMBER(lv_mtg_pay_delay_in,'9999');
			END IF;
		ELSE
			lv_mtg_pay_delay := 0;
		END IF;
		RAISE INFO 'lv_mtg_pay_delay: %', lv_mtg_pay_delay;
		
		IF (lv_current_day_in IS NOT NULL AND LENGTH(lv_current_day_in) >  0 ) THEN
			lv_current_dt := TO_DATE(lv_current_day_in, 'MM-DD-YYYY');
		END IF;
		RAISE INFO 'lv_current_dt: %', lv_current_dt;
		
		IF(lv_prev_cpn_dt IS NOT NULL) THEN
			IF ( (lv_prev_cpn_dt - ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days')) <= lv_current_dt)
				THEN
					prev_cpn_dt := lv_prev_cpn_dt - ( COALESCE (lv_mtg_pay_delay, 0) * interval  '1 days');
					RAISE INFO 'Inside prev_cpn_dt: %', prev_cpn_dt;
				ELSE
					prev_cpn_dt := NULL;
			END IF;
		END IF;

		IF (prev_cpn_dt IS NOT NULL) THEN
			lv_prev_cpn_dt_return := TO_CHAR(prev_cpn_dt,'YYYYMMDD');
			RAISE INFO 'Inside lv_prev_cpn_dt_return: %', lv_prev_cpn_dt_return;
		ELSE
			lv_prev_cpn_dt_return := '';
		END IF;
		
	return lv_prev_cpn_dt_return;
    
   END;                                  
$function$
/