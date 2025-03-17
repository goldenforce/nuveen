INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('CNT1P001==', 'CNT1', 'FT_E_CNT1_PK', 'P', '2023-09-18 00:00:00.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('NDF1P001==', 'NDF1', 'FT_E_NDF1_PK', 'P', '2022-08-25 11:01:58.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('NDF1U001==', 'NDF1', 'FT_E_NDF1_U001', 'U', '2022-09-02 14:00:07.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('NPF1P001==', 'NPF1', 'FT_E_NPF1_PK', 'P', '2022-11-01 16:25:17.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('NPP1P001==', 'NPP1', 'FT_E_NPP1_PK', 'P', '2022-12-13 14:33:46.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('PRA1P001==', 'PRA1', 'FT_E_PRA1_PK', 'P', '2022-08-12 00:00:00.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('PRA1U001==', 'PRA1', 'FT_E_PRA1_U001', 'U', '2022-08-12 00:00:00.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('UDF1P001==', 'UDF1', 'FT_E_UDF1_PK', 'P', '2022-08-12 00:00:00.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('UDF1U001==', 'UDF1', 'FT_E_UDF1_U001', 'U', '2022-08-12 00:00:00.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('UDR1P001==', 'UDR1', 'FT_E_UDR1_PK', 'P', '2022-08-12 00:00:00.000', 'AUTO', NULL, NULL, NULL, NULL);
INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
VALUES('UDR1U001==', 'UDR1', 'FT_X_UDR1_U001', 'U', '2022-08-12 00:00:00.000', 'AUTO', NULL, NULL, NULL, NULL);
Insert into FT_T_TIDX(TIDX_OID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_INDEX_NME,TBL_ID,TBL_INDEX_TYP)Values('CNT1U001==',TO_DATE('2023-10-03 09:03:32','YYYY-MM-DD HH24:MI:SS'),'AUTO','FT_E_CNT1_U001','CNT1','U');

--HLD1

INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
SELECT 'HLD1P001==', 'HLD1', 'FT_V_HLD1_PK', 'P', sysdate(), 'GS:MSYS', NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_T_TIDX WHERE TBL_ID = 'HLD1' and tbl_index_nme= 'FT_V_HLD1_PK');