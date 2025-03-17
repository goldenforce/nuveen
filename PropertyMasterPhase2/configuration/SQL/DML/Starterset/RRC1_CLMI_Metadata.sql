INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
SELECT 'ISRTRRC101', 'ISRT', 'ISS_RTNG_OID', 'RRC1', 'ISS_RTNG_OID', 'STRING', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL, NULL
from dual where not EXISTS (select 1 from ft_t_clmi where clmi_oid='ISRTRRC101' and src_tbl_id='ISRT' and trgt_tbl_id='RRC1');

INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
SELECT 'FIRTRRC101', 'FIRT', 'FINS_RTNG_OID', 'RRC1', 'FINS_RTNG_OID', 'STRING', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL, NULL
from dual where not EXISTS (select 1 from ft_t_clmi where clmi_oid='FIRTRRC101' and src_tbl_id='FIRT' and trgt_tbl_id='RRC1');

INSERT INTO ft_t_clmi
(clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
SELECT 'RTOPRRC101', 'RTOP', 'RTOP_OID', 'RRC1', 'RTOP_OID', 'STRING', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL, NULL
from dual where not EXISTS (select 1 from ft_t_clmi where clmi_oid='RTOPRRC101' and src_tbl_id='RTOP' and trgt_tbl_id='RRC1');