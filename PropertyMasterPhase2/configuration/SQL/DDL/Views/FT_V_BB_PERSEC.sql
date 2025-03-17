CREATE OR REPLACE VIEW ft_v_bb_persec
AS SELECT data1.instr_id,
    data1.bb_mkt_sec,
    data1.bb_sec_typ,
    data1.identifier,
    data1.idcontext,
    data1.bb_cmpy_id
   FROM ( SELECT isgp.instr_id,
            ( SELECT iscl.cl_value
                   FROM ft_t_iscl iscl
                  WHERE iscl.instr_id::text = isgp.instr_id::text AND iscl.indus_cl_set_id::text = 'BBMKTSCT'::text
                 LIMIT 1) AS bb_mkt_sec,
            ( SELECT isst.stat_char_val_txt
                   FROM ft_t_isst isst
                  WHERE isst.instr_id::text = isgp.instr_id::text AND isst.stat_def_id::text = 'BBSECTYP'::text
                 LIMIT 1) AS bb_sec_typ,
                CASE
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBUNIQUE'::text
                     LIMIT 1)) IS NOT NULL THEN ( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBUNIQUE'::text
                     LIMIT 1)
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBGLOBAL'::text
                     LIMIT 1)) IS NOT NULL THEN ( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBGLOBAL'::text
                     LIMIT 1)
                    ELSE NULL::character varying
                END AS identifier,
                CASE
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBUNIQUE'::text
                     LIMIT 1)) IS NOT NULL THEN 'BB_UNIQUE'::text
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBGLOBAL'::text
                     LIMIT 1)) IS NOT NULL THEN 'BB_GLOBAL'::text
                    ELSE NULL::text
                END AS idcontext,
            ( SELECT irid.issr_id
                   FROM ft_t_irid irid,
                    ft_t_issu issu
                  WHERE irid.instr_issr_id::text = issu.instr_issr_id::text AND irid.issr_id_ctxt_typ::text = 'BBCMPYID'::text AND irid.end_tms IS NULL AND issu.instr_id::text = isgp.instr_id::text
                 LIMIT 1) AS bb_cmpy_id
           FROM ft_t_isgr isgr
             LEFT JOIN ft_t_isgp isgp ON isgr.iss_grp_oid::text = isgp.prnt_iss_grp_oid::text AND isgr.grp_purp_typ::text = 'SOI'::text AND isgr.grp_nme::text = 'Eagle SOI'::text AND isgp.end_tms IS NULL OR isgp.end_tms > CURRENT_TIMESTAMP AND isgr.end_tms IS NULL OR isgr.end_tms > CURRENT_TIMESTAMP) data1;