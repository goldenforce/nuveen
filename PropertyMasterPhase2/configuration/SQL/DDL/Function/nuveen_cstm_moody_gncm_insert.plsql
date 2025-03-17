CREATE OR REPLACE PROCEDURE nuveen_cstm_moody_gncm_insert()
 LANGUAGE plpgsql
AS $procedure$
BEGIN
INSERT INTO ft_t_gncm (
cross_ref_id, comm_reas_mnem, ln_num, gncm_tbl_typ, created_tms, last_chg_tms, last_chg_usr_id, nls_cde,
cmnt_txt, end_tms, cmnt_stat_typ, gncm_oid, data_src_id, large_cmnt_clob
)
select
cross_ref_id,
'SOFTDELT' as comm_reas_mnem,
'1' as ln_num,
'ISRT' as gncm_tbl_typ,
CURRENT_TIMESTAMP as created_tms,
CURRENT_TIMESTAMP as last_chg_tms,
'GNCM_MOODYS_RDS_INSERT' as last_chg_usr_id,
'ENGLISH' as nls_cde,
'Yes' as cmnt_txt,
null as end_tms,
'ACTIVE' as cmnt_stat_typ,
new_oid() as gncm_oid ,
'MOODYS_RDS' as data_src_id,
null as large_cmnt_clob
from
(
SELECT
isrt.ISS_RTNG_OID as cross_ref_id
FROM
FT_T_ISRT isrt
JOIN
FT_T_ISGP isgp ON isrt.instr_id = isgp.instr_id
JOIN
FT_T_ISGR isgr ON isgp.prnt_iss_grp_oid = isgr.iss_grp_oid
LEFT JOIN
FT_T_ISSU issu ON isgp.instr_id = issu.instr_id AND issu.iss_typ = 'MUNI'
LEFT JOIN
FT_T_RRC1 rrc1 ON isrt.ISS_RTNG_OID = rrc1.ISS_RTNG_OID
AND rrc1.FINS_RTNG_OID IS NULL
AND rrc1.RTOP_OID IS NULL
AND rrc1.tbl_id = 'ISRT'
WHERE
isrt.end_tms IS NULL and isgp.end_tms IS NULL and isgr.end_tms IS NULL and rrc1.end_tms IS NULL and issu.end_tms is null
and ISRT.sys_eff_end_tms is NULL
AND isrt.data_src_id = 'MOODYS_RDS'
AND rrc1.ISS_RTNG_OID IS NULL
and isgr.iss_grp_oid in
('LEVFIN0001','LEVFIN0002','LEVFIN0003','LEVFIN0004')
AND (
(issu.iss_typ = 'MUNI')
OR
(isgp.instr_id IS NOT NULL))
AND NOT EXISTS (
SELECT 1
FROM ft_t_gncm
WHERE gncm_tbl_typ = 'ISRT'
AND comm_reas_mnem = 'SOFTDELT'
AND cross_ref_id = isrt.ISS_RTNG_OID
)
group by isrt.iss_rtng_oid
) p
;


INSERT INTO ft_t_gncm (
cross_ref_id, comm_reas_mnem, ln_num, gncm_tbl_typ, created_tms, last_chg_tms, last_chg_usr_id, nls_cde,
cmnt_txt, end_tms, cmnt_stat_typ, gncm_oid, data_src_id, large_cmnt_clob
)
SELECT
cross_ref_id,
'SOFTDELT' as comm_reas_mnem,
'1' as ln_num,
'RTOP' as gncm_tbl_typ,
CURRENT_TIMESTAMP as created_tms,
CURRENT_TIMESTAMP as last_chg_tms,
'GNCM_MOODYS_RDS_INSERT' as last_chg_usr_id,
'ENGLISH' as nls_cde,
'Yes' as cmnt_txt,
null as end_tms,
'ACTIVE' as cmnt_stat_typ,
new_oid() as gncm_oid ,
'MOODYS_RDS' as data_src_id,
null as large_cmnt_clob
FROM
(
SELECT
RTOP.RTOP_OID as cross_ref_id
FROM
FT_T_RTOP rtop
JOIN
FT_T_ISGP isgp ON rtop.instr_id = isgp.instr_id
JOIN
FT_T_ISGR isgr ON isgp.prnt_iss_grp_oid = isgr.iss_grp_oid
LEFT JOIN
FT_T_ISSU issu ON isgp.instr_id = issu.instr_id AND issu.iss_typ = 'MUNI'
LEFT JOIN
FT_T_RRC1 rrc1
ON
rtop.RTOP_OID = rrc1.RTOP_OID
AND rrc1.ISS_RTNG_OID IS NULL
AND rrc1.FINS_RTNG_OID IS NULL
AND rrc1.tbl_id='RTOP'
WHERE
rtop.END_TMS IS NULL and isgp.end_tms IS NULL and isgr.end_tms IS NULL and rrc1.end_tms IS NULL and issu.end_tms is null
and RTOP.sys_eff_end_tms is NULL
AND rtop.DATA_SRC_ID = 'MOODYS_RDS'
AND rrc1.RTOP_OID IS NULL
and isgr.iss_grp_oid in
('LEVFIN0001','LEVFIN0002','LEVFIN0003','LEVFIN0004')
AND (
(issu.iss_typ = 'MUNI')
OR
(isgp.instr_id IS NOT NULL))
AND NOT EXISTS (
SELECT 1
FROM ft_t_gncm
WHERE gncm_tbl_typ = 'RTOP'
AND comm_reas_mnem = 'SOFTDELT'
AND cross_ref_id = rtop.RTOP_OID
)
GROUP BY RTOP.RTOP_OID
) r;

UPDATE FT_T_GNCM SET END_TMS= CURRENT_TIMESTAMP,last_chg_usr_id='MOODYS_SOFT_DELETE' WHERE cross_ref_id in(
(SELECT GNCM.cross_ref_id
FROM FT_T_RRC1 RRC1
INNER JOIN FT_T_ISRT ISRT ON RRC1.iss_rtng_oid = ISRT.iss_rtng_oid
INNER JOIN FT_T_GNCM GNCM ON ISRT.iss_rtng_oid = GNCM.cross_ref_id
WHERE ISRT.end_tms IS NULL AND comm_reas_mnem = 'SOFTDELT' AND rrc1.tbl_id='ISRT'
AND GNCM.end_tms IS null and gncm_tbl_typ = 'ISRT'  AND isrt.data_src_id = 'MOODYS_RDS'));

UPDATE FT_T_GNCM SET END_TMS= CURRENT_TIMESTAMP,last_chg_usr_id='MOODYS_SOFT_DELETE' WHERE cross_ref_id in(
(SELECT GNCM.cross_ref_id
FROM FT_T_RRC1 RRC1
INNER JOIN FT_T_rtop rtop ON RRC1.rtop_oid = rtop.rtop_oid
INNER JOIN FT_T_GNCM GNCM ON rtop.rtop_oid = GNCM.cross_ref_id
WHERE rtop.end_tms IS NULL AND comm_reas_mnem = 'SOFTDELT' AND rrc1.tbl_id='RTOP'
AND GNCM.end_tms IS null and gncm_tbl_typ = 'RTOP'  AND rtop.data_src_id = 'MOODYS_RDS'));

END;
$procedure$
;
