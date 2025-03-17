-- END-DATE BAD RATINGS MNEMONIC
update ft_t_fiid fi set end_tms = sysdate(), last_chg_tms = sysdate(), last_chg_usr_id = 'NVNRTNGMNEMCLNUP' where fins_id_ctxt_typ = 'MNEMONIC' and fins_id in ('FITCH', 'MOODYS RDS', 'S&P') and inst_mnem not in ('FITCH', 'MOODYS RDS', 'S&P');

update ft_t_fins f set end_tms = sysdate(), last_chg_tms = sysdate(), last_chg_usr_id = 'NVNRTNGMNEMCLNUP' where pref_fins_id_ctxt_typ = 'MNEMONIC' and pref_fins_id in ('FITCH', 'MOODYS RDS', 'S&P') and inst_mnem not in ('FITCH', 'MOODYS RDS', 'S&P');

-- MNEMONIC FITCH
insert into ft_t_fins (inst_mnem, pref_fins_id_ctxt_typ, pref_fins_id, start_tms, cross_ref_id, last_chg_tms, last_chg_usr_id, inst_nme, data_src_id) select 'FITCH', 'MNEMONIC', 'FITCH', sysdate(), 'RTAGEN', sysdate(), 'NUVEEN:CSTM', 'FITCH', 'FITCH' from dual where not exists (select 1 from ft_t_fins where inst_mnem = 'FITCH');

insert into ft_t_fiid (fiid_oid, inst_mnem, fins_id_ctxt_typ, fins_id, start_tms, last_chg_tms, last_chg_usr_id, data_stat_typ, data_src_id) select 'FIIDFITCH=', 'FITCH', 'MNEMONIC', 'FITCH', sysdate(), sysdate(), 'NUVEEN:CSTM', 'ACTIVE', 'FITCH' from dual where not exists (select 1 from ft_t_fiid where inst_mnem = 'FITCH');

-- MNEMONIC MOODYS
insert into ft_t_fins (inst_mnem, pref_fins_id_ctxt_typ, pref_fins_id, start_tms, cross_ref_id, last_chg_tms, last_chg_usr_id, inst_nme, data_src_id) select 'MOODYS RDS', 'MNEMONIC', 'MOODYS RDS', sysdate(), 'RTAGEN', sysdate(), 'NUVEEN:CSTM', 'MOODYS RDS', 'MOODYS_RDS' from dual where not exists (select 1 from ft_t_fins where inst_mnem = 'MOODYS RDS');

insert into ft_t_fiid (fiid_oid, inst_mnem, fins_id_ctxt_typ, fins_id, start_tms, last_chg_tms, last_chg_usr_id, data_stat_typ, data_src_id) select 'FIIDMDYS==', 'MOODYS RDS', 'MNEMONIC', 'MOODYS RDS', sysdate(), sysdate(), 'NUVEEN:CSTM', 'ACTIVE', 'MOODYS_RDS' from dual where not exists (select 1 from ft_t_fiid where inst_mnem = 'MOODYS RDS');

-- MNEMONIC S&P
insert into ft_t_fins (inst_mnem, pref_fins_id_ctxt_typ, pref_fins_id, start_tms, cross_ref_id, last_chg_tms, last_chg_usr_id, inst_nme, data_src_id) select 'S&P', 'MNEMONIC', 'S&P', sysdate(), 'RTAGEN', sysdate(), 'NUVEEN:CSTM', 'S&P', 'SNPXF_RT' from dual where not exists (select * from ft_t_fins where inst_mnem = 'S&P');

insert into ft_t_fiid (fiid_oid, inst_mnem, fins_id_ctxt_typ, fins_id, start_tms, last_chg_tms, last_chg_usr_id, data_stat_typ, data_src_id) select 'FIIDS&PXF=', 'S&P', 'MNEMONIC', 'S&P', sysdate(), sysdate(), 'NUVEEN:CSTM', 'ACTIVE', 'SNPXF_RT' from dual where not exists (select 1 from ft_t_fiid where inst_mnem = 'S&P');