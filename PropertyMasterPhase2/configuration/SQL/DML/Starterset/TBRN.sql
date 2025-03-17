INSERT INTO ft_t_tbrn
(tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
VALUES('CNT1F00101', 'CNT1ISSU01', 'CNT1', 'INSTR_ID', 1, '2023-09-18 00:00:00.000', 'AUTO');
INSERT INTO ft_t_tbrn
(tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
VALUES('NDF1F00101', 'NDF1ISSU01', 'NDF1', 'INSTR_ID', 1, '2022-08-25 11:02:17.000', 'AUTO');
INSERT INTO ft_t_tbrn
(tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
VALUES('NPP1F00101', 'NPP1NPF101', 'NPP1', 'NPF1_OID', 1, '2022-12-13 14:37:14.000', 'AUTO');
INSERT INTO ft_t_tbrn
(tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
VALUES('PRA1F00101', 'PRA1ISSU01', 'PRA1', 'INSTR_ID', 1, '2022-08-12 00:00:00.000', 'AUTO');
INSERT INTO ft_t_tbrn
(tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
VALUES('UDF1F00101', 'UDF1ISSU01', 'UDF1', 'INSTR_ID', 1, '2022-08-12 00:00:00.000', 'AUTO');
INSERT INTO ft_t_tbrn
(tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
VALUES('UDR1F00101', 'UDR1FINS01', 'UDR1', 'INST_MNEM', 1, '2022-08-12 00:00:00.000', 'AUTO');
INSERT INTO ft_t_tbrn
(tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
 SELECT 'MSC1F00101', 'MSC1ISSU01', 'MSC1', 'INSTR_ID', 1, SYSDATE(), 'NUVEEN:CSTM' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM FT_T_TBRN WHERE TBRL_OID = 'MSC1ISSU01' AND TBL_ID = 'MSC1' AND COL_NME = 'INSTR_ID');
