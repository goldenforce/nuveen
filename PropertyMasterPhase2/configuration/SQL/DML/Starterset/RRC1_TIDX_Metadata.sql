INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
SELECT 'RRC1P001==', 'RRC1', 'FT_E_RRC1_PK', 'P', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_tidx where tidx_oid='RRC1P001==' and tbl_id ='RRC1' and tbl_index_nme ='FT_E_RRC1_PK');

INSERT INTO ft_t_tidx
(tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id, tbl_index_partition_typ, oracle_init_trans_num, reverse_index_ind, bitmap_index_ind)
select 'RRC1U001==', 'RRC1', 'FT_E_RRC1_U001', 'U', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_tidx where tidx_oid='RRC1U001==' and tbl_id ='RRC1' and tbl_index_nme ='FT_E_RRC1_U001');
