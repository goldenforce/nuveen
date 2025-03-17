--{$$-STATEMENT-$$}
CREATE OR REPLACE FUNCTION nuveenmsci_bb_request()
 RETURNS xml
 LANGUAGE plpgsql
AS $function$
   DECLARE
   xml1      XML;
   v_code   NUMERIC;
   v_errm   VARCHAR (640);
BEGIN
   SELECT XMLELEMENT (
             name "VendorRequest",
             XMLFOREST ( 'user1' AS "Requestor",
                        'NuveenMSCI' AS "User",                                                
                        'NuveenMSCI' || '_' || TO_CHAR (SYSDATE(), 'YYYY-MM-DD-HH24.MI.SS') AS "UserRequestID"),
             (SELECT XMLAGG (
                        XMLELEMENT (
                           name "Request",
                           XMLCONCAT (
                              XMLFOREST (
                                 'Generic' AS "RequestType",
                                 'BB' AS "Vendor",
                                 'ISSU' AS "TableType",
                                case WHEN isin is not null then isin when cusip is not null then cusip else sedol END AS "Identifier",
                                 CASE WHEN isin is not null THEN 'ISIN' WHEN cusip is not null THEN 'CUSIP' else 'SEDOL' END AS "IDContext"))))
                FROM ((select msc1.isin, msc1.cusip, msc1.sedol FROM ft_e_msc1 msc1 where msc1.id_bb_company is null)) a
               WHERE 1 = 1))
     INTO xml1
     FROM DUAL;
   RETURN xml1;
  EXCEPTION
      WHEN OTHERS
      THEN
         RAISE NOTICE  '%',SQLSTATE || ':' || SQLERRM || 'BB_request';
return null;
END;
$function$
/