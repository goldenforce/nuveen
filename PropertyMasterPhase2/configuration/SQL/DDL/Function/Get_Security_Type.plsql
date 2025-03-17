
--  Equity
-- select get_security_type('2;RIGHT;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- RT
-- select get_security_type('2;EQUITY OPTION;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- EO
-- select get_security_type('2;EQUitY WRT;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- WT
-- select get_security_type('2;ETP;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- ET
-- select get_security_type('2;UNIT;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- UN
-- select get_security_type('2;HK;COMMON STOCK;;;;;;;;;;;;;;') from dual; -- CS
-- select get_security_type('2;HK;INDEX OPTION;;;;;;;;;;;;;;') from dual; -- IO
-- select get_security_type('2;CLOSED-END FUND;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- MC
-- select get_security_type('2;OPEN-END FUND;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- MF
-- select get_security_type('2;OPEN-END FUND;DEPOSITARY RECEIPT;;;;;;;;;;;;;;') from dual; -- DR
-- select get_security_type('2;OPEN-END FUND;REIT;;;;;;;;;;;;;;') from dual; -- RTCS
-- select get_security_type('2;OPEN-END FUND;HK;;;REITS;;;;;;;;;;;') from dual; -- RTCS
-- select get_security_type('2;OPEN-END FUND;HK;;;;6798;;;;;;;;;;') from dual; -- RTCS
-- select get_security_type('2;OPEN-END FUND;HK;;;;;;;;;;;;;;') from dual; -- CS

-- Cmdty
-- select get_security_type('1;RIGHT;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- FIFT

-- Muni
-- select get_security_type('3;RIGHT;MUTUAL FUND;;;;;;;;;;;;;;') from dual; -- MUNI

-- Pfd
-- select get_security_type('4;HK;REIT;;;;;;;;;;;;;;') from dual; -- RTPF
-- select get_security_type('4;HK;RET;;;REITS;;;;;;;;;;;') from dual; -- RTPF
-- select get_security_type('4;HK;RET;;;RETS;6798;;;;;;;;;;') from dual; -- RTPF
-- select get_security_type('4;HK;RET;Y;;RETS;;;;;;;;;;;') from dual; -- CVPF
-- select get_security_type('4;HK;RET;;;RETS;;;;;;;;;;;') from dual; -- PF

-- Govt
-- select get_security_type('7;DEPOSINOTE SUB;CD;;;RETS;;;;;;;;;;;') from dual; -- TIPS
-- select get_security_type('7;DEPOSINOTE SUB;CD;;Y;RETS;;;;;;;;;;;') from dual; -- GB
-- select get_security_type('7;DEPOSINOTE SUB;CD;;TII;RETS;;;;;;;;;;;') from dual; -- TIPS
-- select get_security_type('7;DEPOSINOTE SUB;BOND;;TIIK;RETS;;USGN;;;;;;;;;') from dual; -- TB
-- select get_security_type('7;DEPOSINOTE SUB;NOTE;;TIIK;RETS;;USGN;;;;;;;;;') from dual; -- TN
-- select get_security_type('7;DEPOSINOTE SUB;NOTE;;TIIK;RETS;;GOVT AGENCY;;DISCOUNT NOTES;;;;;;;') from dual; -- GABN
-- select get_security_type('7;DEPOSINOTE SUB;NOTE;;TIIK;RETS;;GOVT AGENCY;;DISCOUN NOTES;269;;;;;;') from dual; -- IBAN
-- select get_security_type('7;DEPOSINOTE SUB;BILL;;TIIK;RETS;;GOVT AGENCY;;DISCOUN NOTES;69;;;;;;') from dual; -- TR
-- select get_security_type('7;DEPOSINOTE SUB;;;TIIK;RETS;;GOVT AGENCY;;DISCOUN NOTES;69;TREASURY BILL;;;;;') from dual; -- TR


-- Corp
-- select get_security_type('8;DEPOSINOTE SUB;;;TIIK;RETS;;GOVT AGENCY;;DISCOUN NOTES;69;TREASURY BILL;;;;;') from dual; -- CO
-- select get_security_type('8;HK;RET;;;REITS;;;;;;;;;;;') from dual;  -- RTDT
-- select get_security_type('8;HK;RET;;;RETS;6798;;;;;;;;;;') from dual; -- RTDT
-- select get_security_type('8;HK;REIT;;;;;;;;;;;;;;') from dual; -- RTDT
-- select get_security_type('8;HK;;Y;;;;;;;;;;;;;') from dual;  -- CV
-- select get_security_type('8;HK;;;TRACER;;;;;;;;;;;;') from dual;  -- SSCB
-- select get_security_type('8;HK;;;TR;;;;BKN;;269;;;;;;') from dual;  -- BN
-- select get_security_type('8;HK;;;TR;;;;CD;;269;;Y;;;;') from dual;  -- FD
-- select get_security_type('8;HK;;;TR;;;;CD;;269;;N;;;;') from dual;  -- CD
-- select get_security_type('8;HK;;;TR;;;;;CERT OF DEPOSIT;269;;N;;;;') from dual;  -- CD
-- select get_security_type('8;HK;;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- FD

-- INDEX
-- select get_security_type('9;HK;;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual; -- FT
-- select get_security_type('9;INDEX OPTION;;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- IO
-- select get_security_type('9;PHYSICAL INDEX FUTURE;;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual; -- FT

-- CRNCY
-- select get_security_type('10;PHYSICAL INDEX FUTURE;;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual; -- NULL
-- select get_security_type('10;CURRENCY FUTURE;FUTURE;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- CF
-- select get_security_type('10;CURRENCY FUTURE.;FUTURE;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- CF

-- MTG
-- select get_security_type('11;CURRENCY FUTURE.;FTURE;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- MBS
-- select get_security_type('11;AGNCY CMBS;CMO;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- MCMO
-- select get_security_type('11;AGNCY CMBS;;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- CMBS
-- select get_security_type('11;;ABS;;TR;;;;;CERT OF DEPOSIT;269;;Y;;;;') from dual;  -- ABS
-- select get_security_type('11;;ABS;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;;') from dual; -- STAB
-- select get_security_type('11;;TBA;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;;') from dual; -- MTBA
-- select get_security_type('11;;;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;PN;') from dual;  -- PJLN
-- select get_security_type('11;;;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;;') from dual; -- MBS
-- select get_security_type('11;MBSS;POOL;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;;') from dual;  -- MBS
-- select get_security_type('11;ABS OTHER;ABS OTHER;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;;') from dual; -- AB
-- select get_security_type('11;HB;ABS OTHER;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;;') from dual; -- AB
-- select get_security_type('11;SN;ABS OTHER;;TR;;;;;CERT OF DEPOSIT;269;;Y;Y;;;') from dual; -- AB

    
--{$$-STATEMENT-$$}
  CREATE OR REPLACE FUNCTION get_security_type ( inputStr VARCHAR) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS VARCHAR
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
        lv_market_sector_comdty       INTEGER := 1;
        lv_market_sector_equity       INTEGER := 2;
        lv_market_sector_muni         INTEGER := 3;
        lv_market_sector_pfd          INTEGER := 4;
        lv_market_sector_client       INTEGER := 5;
        lv_market_sector_mmkt         INTEGER := 6;
        lv_market_sector_govt         INTEGER := 7;
        lv_market_sector_corp         INTEGER := 8;
        lv_market_sector_index        INTEGER := 9;
        lv_market_sector_curncy       INTEGER := 10;
        lv_market_sector_mtge         INTEGER := 11;
   --     lv_calc_security_type         securitydbo.secmaster_history.security_type%TYPE;
		lv_calc_security_type VARCHAR(100);
        lv_hold_loan_sec_type_xlate   VARCHAR (255);
		i_bb_market_sector     INTEGER;
        i_bb_security_type     VARCHAR;
		i_bb_security_type_2   VARCHAR;
		i_convertible          VARCHAR;
		i_ticker               VARCHAR;
		i_industry_group       VARCHAR;
		i_eqy_sic_code         VARCHAR;
		i_issuer_industry      VARCHAR;
		i_series               VARCHAR;
		i_collat_typ           VARCHAR;
		i_calc_typ             INTEGER;
		i_name                 VARCHAR;
		i_floater              VARCHAR;
		i_is_2a7               VARCHAR;
		i_cpn_freq             VARCHAR;
		i_mtg_pool_typ         VARCHAR DEFAULT NULL;
		lv_inputstr VARCHAR;
    BEGIN
        lv_calc_security_type := NULL;
				
		lv_inputstr := inputStr;
		-- i_bb_market_sector
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_bb_market_sector := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_bb_market_sector: %', i_bb_market_sector;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_bb_security_type
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_bb_security_type := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_bb_security_type: %', i_bb_security_type;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_bb_security_type_2
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_bb_security_type_2 := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_bb_security_type_2: %', i_bb_security_type_2;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_convertible
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_convertible := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_convertible: %', i_convertible;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_ticker
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_ticker := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_ticker: %', i_ticker;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_industry_group
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_industry_group := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_industry_group: %', i_industry_group;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_eqy_sic_code
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_eqy_sic_code := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_eqy_sic_code: %', i_eqy_sic_code;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_issuer_industry
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_issuer_industry := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_issuer_industry: %', i_issuer_industry;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_series
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_series := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_series: %', i_series;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_collat_typ
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_collat_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_collat_typ: %', i_collat_typ;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_calc_typ
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_calc_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_calc_typ: %', i_calc_typ;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_name
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_name := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_name: %', i_name;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_floater
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_floater := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_floater: %', i_floater;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_is_2a7
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_is_2a7 := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_is_2a7: %', i_is_2a7;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_cpn_freq
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_cpn_freq := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_cpn_freq: %', i_cpn_freq;
		
		lv_inputstr := SUBSTRING(lv_inputstr,STRPOS(lv_inputstr,';')+1,LENGTH(lv_inputstr));
		-- i_mtg_pool_typ
		if(LENGTH(LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1)) > 0)
		THEN
			i_mtg_pool_typ := LEFT(lv_inputstr,STRPOS(lv_inputstr,';')-1);
		END IF;
		RAISE INFO 'i_mtg_pool_typ: %', i_mtg_pool_typ;
		
		-- original code
        IF i_bb_market_sector = lv_market_sector_corp
        THEN
            IF    UPPER (i_bb_security_type_2) = 'REIT'
               OR UPPER (i_industry_group) = 'REITS'
               OR i_eqy_sic_code = '6798'
            THEN
                lv_calc_security_type := 'RTDT';
            ELSIF UPPER (i_convertible) = 'Y'
            THEN
                lv_calc_security_type := 'CV';
             ELSIF (   UPPER (i_ticker) LIKE 'TRACER%'
                   OR UPPER (i_ticker) LIKE 'TRAINS%')
            THEN
                lv_calc_security_type := 'SSCB';
             ELSIF (    (UPPER (i_series) LIKE '%BKN%')
                   AND (   i_calc_typ IN (7,
                                          269,
                                          791,
                                          990)
                        OR i_cpn_freq = '0'))
            THEN
                lv_calc_security_type := 'BN';
            ELSIF     (   UPPER (i_series) LIKE '%CD%'
                       OR UPPER (i_collat_typ) = 'CERT OF DEPOSIT')
                  AND UPPER (i_floater) = 'Y'
            THEN
                lv_calc_security_type := 'FD';
            ELSIF     (   UPPER (i_series) LIKE '%CD%'
                       OR UPPER (i_collat_typ) = 'CERT OF DEPOSIT')
                  AND UPPER (i_floater) = 'N'
            THEN
                lv_calc_security_type := 'CD';
                ELSE
                lv_calc_security_type := 'CO';
            END IF;
        ELSIF i_bb_market_sector = lv_market_sector_equity
        THEN
            IF UPPER (i_bb_security_type) = 'RIGHT'
            THEN
                lv_calc_security_type := 'RT';
            ELSIF UPPER (i_bb_security_type) = 'EQUITY OPTION'
            THEN
                lv_calc_security_type := 'EO';
            ELSIF UPPER (i_bb_security_type) = 'EQUITY WRT'
            THEN
                lv_calc_security_type := 'WT';
            ELSIF UPPER (i_bb_security_type) = 'ETP'
            THEN
                lv_calc_security_type := 'ET';
             ELSIF UPPER (i_bb_security_type) = 'UNIT'
            THEN
                lv_calc_security_type := 'UN';
            ELSIF UPPER (i_bb_security_type_2) = 'COMMON STOCK'
            THEN
                lv_calc_security_type := 'CS';
            ELSIF UPPER (i_bb_security_type_2) = 'INDEX OPTION'
            THEN
                lv_calc_security_type := 'IO';
            ELSIF UPPER (i_bb_security_type_2) = 'MUTUAL FUND'
            THEN
                IF UPPER (i_bb_security_type) = 'CLOSED-END FUND'
                THEN
                    lv_calc_security_type := 'MC';
                ELSIF UPPER (I_BB_SECURITY_TYPE) IN
                          ('OPEN-END FUND', 'FUND OF FUNDS', 'SAVINGS PLAN')
                THEN
                    lv_calc_security_type := 'MF';
                END IF;
            ELSIF UPPER (i_bb_security_type_2) = 'DEPOSITARY RECEIPT'
            THEN
                lv_calc_security_type := 'DR';
            ELSIF    UPPER (i_bb_security_type_2) = 'REIT'
                  OR UPPER (i_industry_group) = 'REITS'
                  OR i_eqy_sic_code = '6798'
            THEN
                lv_calc_security_type := 'RTCS';
            ELSE
                lv_calc_security_type := 'CS';
            END IF;
        ELSIF i_bb_market_sector = lv_market_sector_govt
        THEN
            IF UPPER (i_ticker) NOT IN ('TII', 'WITII')
            THEN
                IF     UPPER (i_bb_security_type_2) = 'BOND'
                   AND UPPER (i_issuer_industry) = 'USGN'
                THEN
                    lv_calc_security_type := 'TB';
                ELSIF     UPPER (i_bb_security_type_2) = 'NOTE'
                      AND UPPER (i_issuer_industry) = 'USGN'
                THEN
                    lv_calc_security_type := 'TN';
                ELSIF     UPPER (i_issuer_industry) = 'GOVT AGENCY'
                      AND UPPER (i_collat_typ) = 'DISCOUNT NOTES'
                THEN
                    lv_calc_security_type := 'GADN';
                ELSIF     UPPER (i_issuer_industry) = 'GOVT AGENCY'
                      AND i_calc_typ IN (7,
                                         269,
                                         791,
                                         990)
                THEN
                    lv_calc_security_type := 'IBAN';
                ELSIF (   UPPER (i_bb_security_type_2) = 'BILL'
                       OR UPPER (i_name) LIKE '%TREASURY BILL%')	
                THEN
                    lv_calc_security_type := 'TR';
                 ELSE
                    lv_calc_security_type := 'GB';
                END IF;
            ELSE
                lv_calc_security_type := 'TIPS';
            END IF;
        ELSIF i_bb_market_sector = lv_market_sector_index
        THEN
            IF UPPER (i_bb_security_type) = 'PHYSICAL INDEX FUTURE'
            THEN
                lv_calc_security_type := 'FT';
            ELSIF UPPER (i_bb_security_type) = 'INDEX OPTION'
            THEN
                lv_calc_security_type := 'IO';
            ELSE
                lv_calc_security_type := 'FT';
                  --  TRIM (get_code_translation ('EAGLE PACE','MARKET_SECTOR','EAGLE PACE','SECURITY TYPE',9));
            END IF;
        ELSIF i_bb_market_sector = lv_market_sector_comdty
        THEN
            lv_calc_security_type := 'FIFT';
             --   TRIM (get_code_translation ('EAGLE PACE','MARKET_SECTOR','EAGLE PACE','SECURITY TYPE',1));
        ELSIF i_bb_market_sector = lv_market_sector_mtge
        THEN
            IF     UPPER (i_bb_security_type) != 'CMBS'
               AND UPPER (i_bb_security_type_2) IN ('CMO', 'WHOLE LOAN')
            THEN
                lv_calc_security_type := 'MCMO';
            ELSIF UPPER (i_bb_security_type) IN ('CMBS', 'AGNCY CMBS')
            THEN
                lv_calc_security_type := 'CMBS';
            ELSIF     UPPER (i_bb_security_type_2) = 'ABS'
                  AND UPPER (i_is_2a7) = 'Y'
            THEN
                lv_calc_security_type := 'STAB';
            ELSIF UPPER (i_bb_security_type_2) = 'ABS'
            THEN
                lv_calc_security_type := 'AB';
            ELSIF UPPER (i_bb_security_type_2) = 'TBA'
            THEN
                lv_calc_security_type := 'MTBA';
            ELSIF    i_mtg_pool_typ IS NOT NULL
                  AND UPPER (i_mtg_pool_typ) IN ('PN', 'PL', 'MA')
            THEN
                lv_calc_security_type := 'PJLN';
            ELSIF (   UPPER (i_bb_security_type_2) = 'POOL'
                   OR UPPER (i_bb_security_type) LIKE 'MBS%')
            THEN
                lv_calc_security_type := 'MBS';
            ELSIF     UPPER (i_bb_security_type_2) = 'ABS OTHER'
                  AND UPPER (i_bb_security_type) = 'ABS OTHER'
            THEN
                 lv_calc_security_type := 'AB';
            ELSIF UPPER (i_bb_security_type) IN ('CF',
                                                 'HB',
                                                 'MV',
                                                 'SN')
            THEN
                lv_calc_security_type := 'AB';
            ELSE
                lv_calc_security_type := 'MBS';
            END IF;
        ELSIF i_bb_market_sector = lv_market_sector_muni
        THEN
            lv_calc_security_type := 'MUNI';
        ELSIF i_bb_market_sector = lv_market_sector_pfd
        THEN
            IF    UPPER (i_bb_security_type_2) = 'REIT'
               OR UPPER (i_industry_group) = 'REITS'
               OR i_eqy_sic_code = '6798'
            THEN
                lv_calc_security_type := 'RTPF';
            ELSIF     UPPER (i_convertible) = 'Y'
                  AND UPPER (i_bb_security_type_2) != 'REIT'
            THEN
                lv_calc_security_type := 'CVPF';
            ELSIF UPPER (i_bb_security_type_2) != 'REIT'
            THEN
                lv_calc_security_type := 'PF';
            ELSE
                lv_calc_security_type := 'PF';
            END IF;
        ELSIF i_bb_market_sector = lv_market_sector_curncy
        THEN
             IF (    UPPER (I_BB_SECURITY_TYPE_2) = 'FUTURE'
                AND UPPER (i_bb_security_type) IN
                        ('CURRENCY FUTURE.', 'CURRENCY FUTURE'))
            THEN
                lv_calc_security_type := 'CF';
            END IF;
        ELSIF i_bb_market_sector = lv_market_sector_mmkt
        THEN
            IF     UPPER (i_bb_security_type_2) = 'CP'
               AND i_calc_typ IN (17, 5593)
            THEN
                lv_calc_security_type := 'CP';
            ELSIF     UPPER (i_bb_security_type_2) = 'CP'
                  AND i_calc_typ NOT IN (17, 5593)
            THEN
                lv_calc_security_type := 'CPPG';
             ELSIF UPPER (i_bb_security_type_2) = 'TD'
            THEN
                lv_calc_security_type := 'SLTD';
            ELSIF UPPER (i_bb_security_type) = 'DEPOSIT NOTE SUB'
            THEN
                lv_calc_security_type := 'CNTY';
            ELSIF UPPER (i_bb_security_type_2) = 'BA'
            THEN
                lv_calc_security_type := 'BA';
            ELSIF UPPER (i_bb_security_type_2) = 'BN'
            THEN
                lv_calc_security_type := 'BN';
            ELSIF UPPER (i_bb_security_type_2) = 'CD'
            THEN
                lv_calc_security_type := 'CD';
            END IF;
        END IF;

        lv_hold_loan_sec_type_xlate := NULL;
     --   lv_hold_loan_sec_type_xlate := TRIM (cref.iob_sdh.get_vendor_code_translation ('BLOOMBERGSMF','LOAN SEC TYPE',UPPER (i_bb_security_type)));

		select
		PRNT_CL_VALUE INTO lv_hold_loan_sec_type_xlate
		from
		FT_T_INCL
		where
		INDUS_CL_SET_ID = 'EGBBSECTYP'
		and LEVEL_NUM = 2
		and CL_VALUE = UPPER (i_bb_security_type)
		and end_Tms is null;


        IF lv_hold_loan_sec_type_xlate IS NOT NULL
        THEN
            lv_calc_security_type := lv_hold_loan_sec_type_xlate;
        END IF;
		
		IF (UPPER (i_collat_typ) = 'BILLS') THEN
			lv_calc_security_type         := 'TR';
		END IF;
		
	RETURN lv_calc_security_type;

EXCEPTION
   WHEN OTHERS
   THEN
      RAISE NOTICE 'SQL ERROR: %', SQLERRM;

    END;                                  
	$function$
/