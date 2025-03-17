-- select get_makewhole_basispoint('CALL @ MAKE WHOLE +20BP. LONG 1ST CPN.') from dual; -- 20
-- select get_makewhole_basispoint('CALL @ > PAR OR MAKE WHOLE +50BP. LONG 1ST CPN.') from dual; -- 50
-- select get_makewhole_basispoint('CALL @ > PAR OR MAKE WHOLE +30BP. LONG 1ST CPN.') from dual; -- 30
-- select get_makewhole_basispoint('CALL @ MAKE WHOLE +35BP. LONG 1ST CPN.') from dual; -- 35

-- NULL
-- select get_makewhole_basispoint('') from dual;  -- NULL
-- select get_makewhole_basispoint('PROGRAM USED FOR CSDR.  DUMMY PROGRAM.') from dual; -- NULL

--{$$-STATEMENT-$$}
CREATE OR REPLACE FUNCTION get_makewhole_basispoint ( i_des_notes VARCHAR) 
     --   RETURN securitydbo.secmaster_history.security_type%TYPE
	RETURNS numeric 
	LANGUAGE PLPGSQL
	AS $function$
	DECLARE
	
	lv_des_notes_char VARCHAR;
	lv_des_notes_char1 VARCHAR;
	lv_des_notes NUMERIC (4,2);
	lv_bp_pos INTEGER;
	
	BEGIN
		RAISE INFO 'i_des_notes %',i_des_notes;
		IF STRPOS (i_des_notes, 'MAKE WHOLE') > 0 AND STRPOS (i_des_notes, 'BP') > 0 THEN
			lv_des_notes_char                                                            := i_des_notes;
			lv_des_notes_char                                                            := REPLACE (lv_des_notes_char, '1/4', '.25');
			lv_des_notes_char                                                            := REPLACE (lv_des_notes_char, '1/2', '.50');
			lv_des_notes_char                                                            := REPLACE (lv_des_notes_char, '3/4', '.75');
			lv_des_notes_char                                                            := REPLACE (lv_des_notes_char, '1/8', '.125');
			lv_des_notes_char                                                            := REPLACE (lv_des_notes_char, ' ','');
			lv_des_notes_char                                                            := REPLACE (lv_des_notes_char, '..', '.');
			lv_bp_pos                                                                    := STRPOS (lv_des_notes_char, 'BP');
			
			RAISE INFO 'lv_des_notes_char %',lv_des_notes_char;
			lv_des_notes_char1                                                           := SUBSTR (lv_des_notes_char, lv_bp_pos - 4, 4);
			IF TRIM ( TRANSLATE (SUBSTR (lv_des_notes_char1, 1, 1), '1234567890.', ' ')) != '' THEN
				lv_des_notes_char1                                                         := SUBSTR (lv_des_notes_char, lv_bp_pos - 3, 3);
			END IF;
			IF TRIM ( TRANSLATE (SUBSTR (lv_des_notes_char1, 1, 1), '1234567890.', ' ')) != '' THEN
				lv_des_notes_char1                                                         := SUBSTR (lv_des_notes_char, lv_bp_pos - 2, 2);
			END IF;
			
			RAISE INFO 'lv_des_notes_char1 Before %', lv_des_notes_char1;
			
			IF TRIM (TRANSLATE (lv_des_notes_char1, '1234567890.', ' ')) = '' THEN
				--cref.iob_sdh.convert_numeric (clean(lv_des_notes_char1), lv_des_notes);
				RAISE INFO 'lv_des_notes_char1 %',lv_des_notes_char1;
				lv_des_notes := TO_NUMBER(lv_des_notes_char1,'9999');
			END IF;
		END IF;
 
	RETURN lv_des_notes;
  
   END; 
$function$
/