--{$$-STATEMENT-$$}
create or replace function nuveen_getBBPerSecRequestXML(batchSize INTEGER, job_id text) returns integer
LANGUAGE plpgsql
AS $function$
DECLARE
   	--xmlarr  text[] :=array[]::text[];
  	xml1 	text := NULL;
  	v_code  NUMERIC;
   	v_errm  VARCHAR (640);
 	--temprows ft_v_bb_persec;
 	v_counter integer;
 	v_offset integer;
 	v_rowcount integer;
BEGIN
	v_counter :=0;
	v_offset :=0;
	v_rowcount :=0;

	select count(1) into v_counter from ft_v_bb_persec;
	
while  v_counter > 0 loop
select
	xmlelement
	(name VendorRequest ,
		xmlconcat(
			xmlforest (
						'user1' as "Requestor",
						'NuveenBB' as "User",
						'BB' as "Vendor",
						'REQUEST-IMMEDIATE' as "Action",
						'NuveenBB-' || sysdate() as "UserRequestID"),
			xmlagg	(
				xmlforest(
						xmlconcat(
								xmlconcat(
									xmlconcat(
												xmlforest 
												(
													'SECMASTER' as "DataType",
													'BB' as "Vendor",
													'ISSU' as "TableType",
													identifier as "Identifier",
													IDContext as "IDContext"
												),
												xmlelement (name Param, xmlattributes ('MarketSector' as "Key"), BB_MKT_SEC)
											),
												xmlelement (name Param, xmlattributes ('SecurityType1' as "Key"), BB_SEC_TYP)
										),
											xmlelement (name Param, xmlattributes ('Exchange' as "Key"), BB_EXCHANGE)
								)
						as "Request") 
					)
				)
	)
into xml1 from (select * from ft_v_bb_persec order by instr_id limit batchSize offset v_offset) as row1;	
v_rowcount := v_rowcount+1;

insert into ft_o_req1 (req1_oid,seq_num,job_id,data_src_id,req_xml,vnd_rqst_tms,vnd_rqst_typ) 
select new_oid(),v_rowcount,job_id,'BB',xml1,now(),'BBPERSEC';

--xmlarr = array_append(xmlarr,xml1::text);
	v_offset := v_offset + batchsize;
	v_counter := v_counter - batchsize;
--raise notice 'row %',xml1;
end loop;	
return v_rowcount;
EXCEPTION
      WHEN OTHERS
      THEN
         RAISE NOTICE  ' % ',SQLSTATE || ' : ' || SQLERRM || 'BB_request';
return null;
END;
$function$
/