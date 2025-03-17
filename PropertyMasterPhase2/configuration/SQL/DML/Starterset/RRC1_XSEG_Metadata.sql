INSERT INTO ft_t_xseg
(segment_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, locked_by_usr_id, segment_nme, segment_desc, dtd_bin, dup_insert_ind, segment_typ, virtual_segment_ind)
select 9000011, CURRENT_TIMESTAMP, NULL, CURRENT_TIMESTAMP, 'NUVEEN:CSTM', NULL, 'RRC1RatingRecon', 'RRC1', NULL, NULL, NULL, NULL
from dual where not EXISTS (select 1 from ft_t_xseg where segment_id='9000011' and segment_desc='RRC1' and segment_nme='RRC1RatingRecon');