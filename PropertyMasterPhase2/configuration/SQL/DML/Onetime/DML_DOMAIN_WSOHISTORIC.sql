INSERT INTO ft_t_dsrc (data_src_id, org_id, subd_org_id, subdiv_id, inst_mnem, finsrl_typ, start_tms, data_stat_typ, last_chg_tms, last_chg_usr_id, data_src_addr_txt, mail_addr_id, data_src_nme, data_src_desc, end_tms, msg_fmt_mnem, global_data_prov_ind, prnt_data_src_id, finr_oid, subd_oid) select 'WSO_ADMIN_HISTORIC', NULL, NULL, NULL, NULL, NULL, date_trunc('day',now()), NULL, date_trunc('day',now()), 'NUVEEN:CSTM', NULL, NULL, 'WSO Admin Historic', 'Wall Street Office Admin', NULL, NULL, NULL, NULL, NULL, null from dual where not exists (select 1 from ft_T_dsrc where data_src_id='WSO_ADMIN_HISTORIC');

insert into ft_T_idmv (intrnl_dmn_val_id,fld_data_cl_id,last_chg_tms,last_chg_usr_id,mod_rst_ind,intrnl_dmn_val_nme,intrnl_dmn_val_txt,intrnl_dmn_desc,data_stat_typ,data_src_id)
select 'NVWSOHIS01','DSRCID',date_trunc('day',now()),'NUVEEN:CSTM','N','WSO Admin Historic Correction','WSO_ADMIN_HISTORIC','WSO Admin Historic Correction','ACTIVE','WSO_ADMIN_HISTORIC'
from dual where not exists (select 1 from ft_T_idmv where intrnl_dmn_val_id='NVWSOHIS01');

INSERT INTO ft_t_edmv
(edmv_oid, intrnl_dmn_val_id, data_src_id, efld_data_src_id, ext_fld_id, nls_cde, last_chg_tms, last_chg_usr_id, data_stat_typ, ext_dmn_val_txt, ext_dmn_val_nme, ext_dmn_val_desc, start_tms, end_tms)
select 'NVWSOHIS01', intrnl_dmn_val_id, 'WSO_ADMIN_HISTORIC', NULL, NULL, 'ENGLISH', date_trunc('day',now()), 'NUVEEN:CSTM', 'ACTIVE', 'Term Loan', 'Term Loan', 'Term Loan', date_trunc('day',now()), null
from ft_T_idmv where intrnl_dmn_val_txt ='TERM'and fld_data_cl_id ='LOANTYPE' and not exists (select 1 from ft_T_edmv where edmv_oid='NVWSOHIS01');

INSERT INTO ft_t_edmv
(edmv_oid, intrnl_dmn_val_id, data_src_id, efld_data_src_id, ext_fld_id, nls_cde, last_chg_tms, last_chg_usr_id, data_stat_typ, ext_dmn_val_txt, ext_dmn_val_nme, ext_dmn_val_desc, start_tms, end_tms)
select 'NVWSOHIS02', intrnl_dmn_val_id, 'WSO_ADMIN_HISTORIC', NULL, NULL, 'ENGLISH', date_trunc('day',now()), 'NUVEEN:CSTM', 'ACTIVE', 'Revolver', 'Revolver', 'Revolver', date_trunc('day',now()), null
from ft_T_idmv where intrnl_dmn_val_txt ='REVOLVER'and fld_data_cl_id ='LOANTYPE' and not exists (select 1 from ft_T_edmv where edmv_oid='NVWSOHIS02');

update ft_T_udf1 set lrd_subscrption_flag='N' where lrd_subscrption_flag is null and instr_id in (select instr_id from ft_T_isgp where end_tms is null);

commit;