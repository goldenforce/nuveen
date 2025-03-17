--{$$-STATEMENT-$$}

CREATE OR REPLACE FUNCTION NUVEEN_FNC_GET_UNIQUE_FINS_ID
        () RETURNS CHARACTER VARYING LANGUAGE plpgsql
AS
        $function$
        DECLARE
                SEQNO   NUMERIC;
                p_oid   VARCHAR(100000);
                err_num VARCHAR(100000);
                err_msg VARCHAR(100000);
        BEGIN
			--NVEENGBLISSRID
				SELECT
                        nextval('nuveen_seq_fins_id')
                INTO
                        SEQNO;
                
                p_oid:= ltrim(TO_CHAR(SEQNO, '9999999999'));
                RETURN p_oid;
        EXCEPTION
        WHEN OTHERS THEN
                err_num := SQLSTATE;
                err_msg := SUBSTR(SQLERRM,1,100);
                RAISE NOTICE 'Trapped Error: %', err_msg;
                RETURN err_msg;
        END;
        $function$
/


--GRANT EXECUTE ON FUNCTION #DBOWNER#.NUVEEN_FNC_GET_UNIQUE_FINS_ID TO #APPUSER#;
--/