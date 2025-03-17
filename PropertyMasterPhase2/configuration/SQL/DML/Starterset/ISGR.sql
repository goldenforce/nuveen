INSERT INTO ft_t_isgr
(iss_grp_oid, org_id, subdiv_id, iss_grp_id, last_chg_tms, last_chg_usr_id, grp_purp_typ, start_tms, end_tms, cross_ref_id, grp_nme, grp_desc, instr_id, data_stat_typ, data_src_id, subd_org_id, dwdf_oid, dim_set_txt, dim_header_txt, subd_oid, pped_oid, pcfd_oid)
select 'LEVFIN0001', NULL, NULL, 'LEVFINHELDLOANS', sysdate(), 'user1', 'UNIVERSE', sysdate(), NULL, NULL, 'Loans - Held', NULL, NULL, 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, null from dual where not exists (select 1 from ft_t_isgr where grp_nme = 'Loans - Held');

INSERT INTO ft_t_isgr
(iss_grp_oid, org_id, subdiv_id, iss_grp_id, last_chg_tms, last_chg_usr_id, grp_purp_typ, start_tms, end_tms, cross_ref_id, grp_nme, grp_desc, instr_id, data_stat_typ, data_src_id, subd_org_id, dwdf_oid, dim_set_txt, dim_header_txt, subd_oid, pped_oid, pcfd_oid)
select 'LEVFIN0002', NULL, NULL, 'LEVFINHELDNONLOANS', sysdate(), 'user1', 'UNIVERSE', sysdate(), NULL, NULL, 'Non Loans - Held', NULL, NULL, 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, null from dual where not exists (select 1 from ft_t_isgr where grp_nme = 'Non Loans - Held');

INSERT INTO ft_t_isgr
(iss_grp_oid, org_id, subdiv_id, iss_grp_id, last_chg_tms, last_chg_usr_id, grp_purp_typ, start_tms, end_tms, cross_ref_id, grp_nme, grp_desc, instr_id, data_stat_typ, data_src_id, subd_org_id, dwdf_oid, dim_set_txt, dim_header_txt, subd_oid, pped_oid, pcfd_oid)
select 'LEVFIN0003', NULL, NULL, 'LEVFININVESTLOANS', sysdate(), 'user1', 'UNIVERSE', sysdate(), NULL, NULL, 'Loan - Investable', NULL, NULL, 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL from dual where not exists (select 1 from ft_t_isgr where grp_nme = 'Loan - Investable');

INSERT INTO ft_t_isgr
(iss_grp_oid, org_id, subdiv_id, iss_grp_id, last_chg_tms, last_chg_usr_id, grp_purp_typ, start_tms, end_tms, cross_ref_id, grp_nme, grp_desc, instr_id, data_stat_typ, data_src_id, subd_org_id, dwdf_oid, dim_set_txt, dim_header_txt, subd_oid, pped_oid, pcfd_oid)
select 'LEVFIN0004', NULL, NULL, 'LEVFININVESTNONLOANS', sysdate(), 'user1', 'UNIVERSE', sysdate(), NULL, NULL, 'Non Loan - Investable', NULL, NULL, 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, null from dual where not exists (select 1 from ft_t_isgr where grp_nme = 'Non Loan - Investable');

INSERT INTO ft_t_isgr
(iss_grp_oid, org_id, subdiv_id, iss_grp_id, last_chg_tms, last_chg_usr_id, grp_purp_typ, start_tms, end_tms, cross_ref_id, grp_nme, grp_desc, instr_id, data_stat_typ, data_src_id, subd_org_id, dwdf_oid, dim_set_txt, dim_header_txt, subd_oid, pped_oid, pcfd_oid)
select 'EGLMNISOI1', NULL, NULL, NULL, sysdate(), 'NUVEEN:CSTM', 'SOI', sysdate(), NULL, NULL, 'Eagle Muni SOI', 'Eagle Muni SOI', NULL, 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, null from dual where not exists (select 1 from ft_t_isgr where grp_nme = 'Eagle Muni SOI');