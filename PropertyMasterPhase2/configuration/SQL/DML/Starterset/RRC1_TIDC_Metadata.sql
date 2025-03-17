INSERT INTO ft_t_tidc
(tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, sort_seq_typ, last_chg_tms, last_chg_usr_id, col_expr_txt)
select 'RRC1P00101', 'RRC1P001==', 'RRC1', 'RRC1_OID', 1, NULL, CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL
from dual where not EXISTS (select 1 from ft_t_tidc where tidc_oid='RRC1P00101' and tidx_oid='RRC1P001==' and tbl_id='RRC1' and col_nme='RRC1_OID');


INSERT INTO ft_t_tidc
(tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, sort_seq_typ, last_chg_tms, last_chg_usr_id, col_expr_txt)
select 'RRC1U00101', 'RRC1U001==', 'RRC1', 'ISS_RTNG_OID', 1, NULL, CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL
from dual where not EXISTS (select 1 from ft_t_tidc where tidc_oid='RRC1U00101' and tidx_oid='RRC1U001==' and tbl_id='RRC1' and col_nme='ISS_RTNG_OID');


INSERT INTO ft_t_tidc
(tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, sort_seq_typ, last_chg_tms, last_chg_usr_id, col_expr_txt)
select 'RRC1U00102', 'RRC1U001==', 'RRC1', 'FINS_RTNG_OID', 2, NULL, CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL 
from dual where not EXISTS (select 1 from ft_t_tidc where tidc_oid='RRC1U00102' and tidx_oid='RRC1U001==' and tbl_id='RRC1' and col_nme='FINS_RTNG_OID');


INSERT INTO ft_t_tidc
(tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, sort_seq_typ, last_chg_tms, last_chg_usr_id, col_expr_txt)
select 'RRC1U00103', 'RRC1U001==', 'RRC1', 'RTOP_OID', 3, NULL, CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL 
from dual where not EXISTS (select 1 from ft_t_tidc where tidc_oid='RRC1U00103' and tidx_oid='RRC1U001==' and tbl_id='RRC1' and col_nme='RTOP_OID');

INSERT INTO ft_t_tidc
(tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, sort_seq_typ, last_chg_tms, last_chg_usr_id, col_expr_txt)
select 'RRC1U00104', 'RRC1U001==', 'RRC1', 'TBL_ID', 4, NULL, CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL 
from dual where not EXISTS (select 1 from ft_t_tidc where tidc_oid='RRC1U00104' and tidx_oid='RRC1U001==' and tbl_id='RRC1' and col_nme='TBL_ID');