CREATE OR REPLACE PROCEDURE nuveen_cstm_snp_gncm_insert()
 LANGUAGE plpgsql
AS $procedure$
BEGIN
    -- Insert for ISS_RTNG_OID
    INSERT INTO ft_t_gncm (
        cross_ref_id, comm_reas_mnem, ln_num, gncm_tbl_typ, created_tms, last_chg_tms, last_chg_usr_id, nls_cde, 
        cmnt_txt, end_tms, cmnt_stat_typ, gncm_oid, data_src_id, large_cmnt_clob
    )
    SELECT 
        isrt.ISS_RTNG_OID, 'SOFTDELT', '1', 'ISRT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'GNCM_SNPXF_RT_INSERT', 'ENGLISH', 
        'Yes', NULL, 'ACTIVE', new_oid(), 'SNPXF_RT',NULL
    FROM 
        FT_T_ISRT isrt
    LEFT JOIN 
        FT_T_RRC1 rrc1 
    ON 
        isrt.ISS_RTNG_OID = rrc1.ISS_RTNG_OID 
        AND rrc1.FINS_RTNG_OID IS NULL 
        AND rrc1.RTOP_OID IS NULL
		AND rrc1.tbl_id='ISRT'
    WHERE 
        isrt.end_tms IS NULL 
        AND isrt.data_src_id = 'SNPXF_RT'  
        AND rrc1.ISS_RTNG_OID IS NULL
        AND NOT EXISTS (
            SELECT 1 
            FROM ft_t_gncm 
            WHERE gncm_tbl_typ = 'ISRT' 
              AND comm_reas_mnem = 'SOFTDELT' 
              AND cross_ref_id = isrt.ISS_RTNG_OID
        );

    -- Insert for FINS_RTNG_OID
    INSERT INTO ft_t_gncm (
        cross_ref_id, comm_reas_mnem, ln_num, gncm_tbl_typ, created_tms, last_chg_tms, last_chg_usr_id, nls_cde, 
        cmnt_txt, end_tms, cmnt_stat_typ, gncm_oid, data_src_id, large_cmnt_clob
    )
    SELECT 
        firt.FINS_RTNG_OID, 'SOFTDELT', '1', 'FIRT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'GNCM_SNPXF_RT_INSERT', 'ENGLISH', 
        'Yes', NULL, 'ACTIVE', new_oid(), 'SNPXF_RT',NULL
    FROM 
        FT_T_FIRT firt
    LEFT JOIN 
        FT_T_RRC1 rrc1 
    ON 
        firt.FINS_RTNG_OID = rrc1.FINS_RTNG_OID 
        AND rrc1.ISS_RTNG_OID IS NULL 
        AND rrc1.RTOP_OID IS NULL
		AND rrc1.tbl_id='FIRT'
    WHERE 
        firt.END_TMS IS NULL 
        AND firt.DATA_SRC_ID = 'SNPXF_RT'
        AND rrc1.FINS_RTNG_OID IS NULL
        AND NOT EXISTS (
            SELECT 1 
            FROM ft_t_gncm 
            WHERE gncm_tbl_typ = 'FIRT' 
              AND comm_reas_mnem = 'SOFTDELT' 
              AND cross_ref_id = firt.FINS_RTNG_OID
        );

    -- Insert for RTOP_OID
    INSERT INTO ft_t_gncm (
        cross_ref_id, comm_reas_mnem, ln_num, gncm_tbl_typ, created_tms, last_chg_tms, last_chg_usr_id, nls_cde, 
        cmnt_txt, end_tms, cmnt_stat_typ, gncm_oid, data_src_id, large_cmnt_clob
    )
    SELECT 
        rtop.RTOP_OID, 'SOFTDELT', '1', 'RTOP', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'GNCM_SNPXF_RT_INSERT', 'ENGLISH', 
        'Yes', NULL, 'ACTIVE', new_oid(), 'SNPXF_RT',NULL
    FROM 
        FT_T_RTOP rtop
    LEFT JOIN 
        FT_T_RRC1 rrc1 
    ON 
        rtop.RTOP_OID = rrc1.RTOP_OID 
        AND rrc1.ISS_RTNG_OID IS NULL 
        AND rrc1.FINS_RTNG_OID IS NULL
		AND rrc1.tbl_id='RTOP'
    WHERE 
        rtop.END_TMS IS NULL 
        AND rtop.DATA_SRC_ID = 'SNPXF_RT'
        AND rrc1.RTOP_OID IS NULL
        AND NOT EXISTS (
            SELECT 1 
            FROM ft_t_gncm 
            WHERE gncm_tbl_typ = 'RTOP' 
              AND comm_reas_mnem = 'SOFTDELT' 
              AND cross_ref_id = rtop.RTOP_OID
        );
		
		UPDATE FT_T_GNCM SET END_TMS= CURRENT_TIMESTAMP,last_chg_usr_id='SNPXF_SOFT_DELETE' WHERE cross_ref_id in(
		(SELECT GNCM.cross_ref_id
        FROM FT_T_RRC1 RRC1
		INNER JOIN FT_T_ISRT ISRT ON RRC1.iss_rtng_oid = ISRT.iss_rtng_oid
		INNER JOIN FT_T_GNCM GNCM ON ISRT.iss_rtng_oid = GNCM.cross_ref_id
		WHERE ISRT.end_tms IS NULL AND comm_reas_mnem = 'SOFTDELT' AND  rrc1.tbl_id='ISRT'
		AND GNCM.end_tms IS null and gncm_tbl_typ = 'ISRT'  AND isrt.data_src_id = 'SNPXF_RT'));
		
		UPDATE FT_T_GNCM SET END_TMS= CURRENT_TIMESTAMP,last_chg_usr_id='SNPXF_SOFT_DELETE' WHERE cross_ref_id in(
		(SELECT GNCM.cross_ref_id
        FROM FT_T_RRC1 RRC1
		INNER JOIN FT_T_FIRT FIRT ON RRC1.fins_rtng_oid = firt.fins_rtng_oid
		INNER JOIN FT_T_GNCM GNCM ON firt.fins_rtng_oid = GNCM.cross_ref_id
		WHERE firt.end_tms IS NULL AND comm_reas_mnem = 'SOFTDELT'  AND  rrc1.tbl_id='FIRT'
		AND GNCM.end_tms IS null and gncm_tbl_typ = 'FIRT' AND firt.data_src_id = 'SNPXF_RT'));
		
		UPDATE FT_T_GNCM SET END_TMS= CURRENT_TIMESTAMP,last_chg_usr_id='SNPXF_SOFT_DELETE' WHERE cross_ref_id in(
		(SELECT GNCM.cross_ref_id
        FROM FT_T_RRC1 RRC1
		INNER JOIN FT_T_rtop rtop ON RRC1.rtop_oid = rtop.rtop_oid
		INNER JOIN FT_T_GNCM GNCM ON rtop.rtop_oid = GNCM.cross_ref_id
		WHERE rtop.end_tms IS NULL AND comm_reas_mnem = 'SOFTDELT' AND  rrc1.tbl_id='RTOP'
		AND GNCM.end_tms IS null and gncm_tbl_typ = 'RTOP'  AND rtop.data_src_id = 'SNPXF_RT'));
END;
$procedure$
;
