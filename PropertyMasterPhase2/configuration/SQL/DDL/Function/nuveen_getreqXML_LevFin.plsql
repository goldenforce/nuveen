create or replace
function nuveen_getreqXML_LevFin(batchsize integer,
job_id text)
-- RETURNS integer
	returns xml
 language plpgsql
as $function$
declare
--xmlarr  text[] :=array[]::text[];
xml1 text := null;

v_code numeric;

v_errm VARCHAR (640);
--temprows ft_v_bb_persec_loans;
v_counter integer;

v_offset integer;

v_rowcount integer;

begin
	v_counter := 0;

v_offset := 0;

v_rowcount := 0;
--select count(1) into v_counter from ft_v_bb_persec_loans;
--while  v_counter > 0 loop



select
	xmlelement
	(name VendorRequest ,
		xmlconcat(
			xmlforest (
						'user1' as "Requestor",
						'NuveenBB' as "User",
						'BB' as "Vendor",
						'adhoc' as "ProgramFlag",
						'REQUEST-IMMEDIATE' as "Action",
						'NuveenBB-' || sysdate() as "UserRequestID"),
			xmlagg (
				xmlforest(
						xmlconcat(
								xmlconcat(
									xmlconcat(
												xmlforest 
												(
													case
		when iss_typ = 'LOAN' then 'NVNLevFinBBGLoans'
		else 'NVNLevFinBBGNonLoans'
	end as "RequestType",
													'BB' as "Vendor",
													'ISSU' as "TableType",
													identifier as "Identifier",
													IDContext as "IDContext"
												),
												xmlelement (name Param,
	xmlattributes ('MarketSector' as "Key"),
	BB_MKT_SEC)
											),
												xmlelement (name Param,
	xmlattributes ('SecurityType1' as "Key"),
	BB_SEC_TYP)
										)
	--,
	--xmlelement (name Param, xmlattributes ('Exchange' as "Key"), BB_EXCHANGE)
								)
						as "Request") 
					)
				)
	)
into
	xml1
from
	ft_v_bb_persec_loans ;
--v_rowcount := v_rowcount+1;
--insert into ft_o_req1 (req1_oid,seq_num,job_id,data_src_id,req_xml,vnd_rqst_tms,vnd_rqst_typ) 
--select new_oid(),v_rowcount,job_id,'BB',xml1,now(),'BBPERSEC';
--xmlarr = array_append(xmlarr,xml1::text);
--	v_offset := v_offset + batchsize;
--	v_counter := v_counter - batchsize;
--end loop;	
--return v_rowcount;
return xml1;

exception
when others
      then
         raise notice ' % ',
sqlstate || ' : ' || sqlerrm || 'BB_request';

return null;
end;
$function$
/
