INSERT INTO ft_t_tbrl
(tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, tbl_merge_typ, tbl_dup_error_ind, last_chg_tms, last_chg_usr_id, prim_key_cmpnt_ind, logl_only_ind, rfi_rule_typ, child_to_prnt_txt, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_txt, prnt_to_child_req_ind, prnt_to_child_card_typ, alt_logl_key, ref_partition_ind)
VALUES('CNT1ISSU01', 'CNT1', 'ISSU', 'CNT1F001', NULL, NULL, '2023-09-18 00:00:00.000', 'AUTO', NULL, 'N', 'R', NULL, 'Y', '1,1', NULL, 'N', '0,M', NULL, NULL);
INSERT INTO ft_t_tbrl
(tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, tbl_merge_typ, tbl_dup_error_ind, last_chg_tms, last_chg_usr_id, prim_key_cmpnt_ind, logl_only_ind, rfi_rule_typ, child_to_prnt_txt, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_txt, prnt_to_child_req_ind, prnt_to_child_card_typ, alt_logl_key, ref_partition_ind)
VALUES('NDF1ISSU01', 'NDF1', 'ISSU', 'NDF1F001', NULL, NULL, '2022-08-25 11:02:17.000', 'AUTO', NULL, 'N', 'R', NULL, 'N', '0,1', NULL, 'N', '0,M', NULL, NULL);
INSERT INTO ft_t_tbrl
(tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, tbl_merge_typ, tbl_dup_error_ind, last_chg_tms, last_chg_usr_id, prim_key_cmpnt_ind, logl_only_ind, rfi_rule_typ, child_to_prnt_txt, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_txt, prnt_to_child_req_ind, prnt_to_child_card_typ, alt_logl_key, ref_partition_ind)
VALUES('NPP1NPF101', 'NPP1', 'NPF1', 'NPP1F001', NULL, NULL, '2022-12-13 14:37:14.000', 'AUTO', NULL, 'N', 'R', NULL, 'N', '0,1', NULL, 'N', '0,M', NULL, NULL);
INSERT INTO ft_t_tbrl
(tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, tbl_merge_typ, tbl_dup_error_ind, last_chg_tms, last_chg_usr_id, prim_key_cmpnt_ind, logl_only_ind, rfi_rule_typ, child_to_prnt_txt, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_txt, prnt_to_child_req_ind, prnt_to_child_card_typ, alt_logl_key, ref_partition_ind)
VALUES('PRA1ISSU01', 'PRA1', 'ISSU', 'PRA1F001', NULL, NULL, '2022-08-12 00:00:00.000', 'AUTO', NULL, 'N', 'R', NULL, 'Y', '1,1', NULL, 'N', '0,M', NULL, NULL);
INSERT INTO ft_t_tbrl
(tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, tbl_merge_typ, tbl_dup_error_ind, last_chg_tms, last_chg_usr_id, prim_key_cmpnt_ind, logl_only_ind, rfi_rule_typ, child_to_prnt_txt, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_txt, prnt_to_child_req_ind, prnt_to_child_card_typ, alt_logl_key, ref_partition_ind)
VALUES('UDF1ISSU01', 'UDF1', 'ISSU', 'UDF1F001', NULL, NULL, '2022-08-12 00:00:00.000', 'AUTO', NULL, 'N', 'R', NULL, 'Y', '1,1', NULL, 'N', '0,M', NULL, NULL);
INSERT INTO ft_t_tbrl
(tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, tbl_merge_typ, tbl_dup_error_ind, last_chg_tms, last_chg_usr_id, prim_key_cmpnt_ind, logl_only_ind, rfi_rule_typ, child_to_prnt_txt, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_txt, prnt_to_child_req_ind, prnt_to_child_card_typ, alt_logl_key, ref_partition_ind)
VALUES('UDR1FINS01', 'UDR1', 'FINS', 'UDR1F001', NULL, NULL, '2022-08-12 00:00:00.000', 'AUTO', NULL, 'N', 'R', NULL, 'Y', '1,1', NULL, 'N', '0,M', NULL, NULL);
INSERT INTO ft_t_tbrl
(tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, tbl_merge_typ, tbl_dup_error_ind, last_chg_tms, last_chg_usr_id, prim_key_cmpnt_ind, logl_only_ind, rfi_rule_typ, child_to_prnt_txt, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_txt, prnt_to_child_req_ind, prnt_to_child_card_typ, alt_logl_key, ref_partition_ind)
 SELECT 'MSC1ISSU01', 'MSC1', 'ISSU', 'MSC1F001', NULL, NULL, SYSDATE(), 'NUVEEN:CSTM', NULL, 'N', 'R', NULL, 'Y', '1,1', NULL, 'N', '0,M', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM FT_T_TBRL WHERE TBRL_OID = 'MSC1ISSU01' AND TBL_ID = 'MSC1' AND REF_TBL_ID = 'ISSU' AND TBL_FGN_KEY_ID = 'MSC1F001');
