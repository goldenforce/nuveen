
DELETE FROM FT_T_CLMI WHERE TRGT_TBL_ID IN ( 'CNT1','PRA1','NDF1','UDF1','UDR1');

INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
VALUES('ISSUCNT100', 'ISSU', 'INSTR_ID', 'CNT1', 'INSTR_ID', 'STRING', '2023-09-18 00:00:00.000', 'AUTO', NULL, NULL);

INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
VALUES('ISSUNDF100', 'ISSU', 'INSTR_ID', 'NDF1', 'INSTR_ID', 'STRING', '2022-10-04 12:10:00.000', 'AUTO', NULL, NULL);

INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
VALUES('ISSUPRA100', 'ISSU', 'INSTR_ID', 'PRA1', 'INSTR_ID', 'STRING', '2022-11-23 03:23:19.000', 'AUTO', NULL, NULL);

INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
VALUES('ISSUUDF100', 'ISSU', 'INSTR_ID', 'UDF1', 'INSTR_ID', 'STRING', '2022-09-02 16:48:33.000', 'AUTO', NULL, NULL);

INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
VALUES('FINSUDR100', 'FINS', 'INST_MNEM', 'UDR1', 'INST_MNEM', 'STRING', '2022-08-12 00:00:00.000', 'AUTO', NULL, NULL);