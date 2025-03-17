


INSERT INTO ft_t_xseg
(segment_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, locked_by_usr_id, segment_nme, segment_desc, dtd_bin, dup_insert_ind, segment_typ, virtual_segment_ind)
select 8080841, '2024-10-09 00:00:00.000', NULL, '2024-10-09 00:00:00.000', 'AUTO', NULL, 'PropertySubtype', 'PPS1', NULL, NULL, NULL, null from dual 
where not exists (select 'x' from ft_T_xseg where segment_nme= 'PropertySubtype');