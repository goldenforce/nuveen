INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
select 9000011, 'RRC1', 'RRC1', 'P', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL from dual where not EXISTS (select 1 from ft_t_xsto 
where segment_id='9000011' and tbl_id ='RRC1' and prnt_tbl_id='RRC1');