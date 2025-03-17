INSERT INTO ft_t_ausr(ausr_oid, org_id, usr_id, start_tms, end_tms, usr_typ, empl_oid, cst_id, inst_mnem, finsrl_typ, last_chg_tms, last_chg_usr_id, pswd_reset_fq_cnt, pswd_reset_tms, usr_pswd_txt, usr_stat_typ, usr_stat_reas_txt, usr_nme, usr_desc, usr_first_nme, usr_mid_nme, usr_last_nme, finr_oid)
select 'R6Bf01FsW1', NULL, 'user2', SYSDATE(), NULL, 'WSTATION', NULL, NULL, NULL, NULL, SYSDATE(), 'user1', NULL, NULL, NULL, NULL, NULL, 'user2', NULL, NULL, NULL, NULL, NULL 
from dual where not exists (select 'x' from ft_t_ausr where usr_id = 'user2');
INSERT INTO ft_t_ausr(ausr_oid, org_id, usr_id, start_tms, end_tms, usr_typ, empl_oid, cst_id, inst_mnem, finsrl_typ, last_chg_tms, last_chg_usr_id, pswd_reset_fq_cnt, pswd_reset_tms, usr_pswd_txt, usr_stat_typ, usr_stat_reas_txt, usr_nme, usr_desc, usr_first_nme, usr_mid_nme, usr_last_nme, finr_oid)
select 'R6Bi01FsW1', NULL, 'user3', SYSDATE(), NULL, 'WSTATION', NULL, NULL, NULL, NULL, SYSDATE(), 'user1', NULL, NULL, NULL, NULL, NULL, 'user3', NULL, NULL, NULL, NULL, NULL
from dual where not exists (select 'x' from ft_t_ausr where usr_id = 'user3');

INSERT INTO ft_t_ausr
(ausr_oid, org_id, usr_id, start_tms, end_tms, usr_typ, empl_oid, cst_id, inst_mnem, finsrl_typ, last_chg_tms, last_chg_usr_id, pswd_reset_fq_cnt, pswd_reset_tms, usr_pswd_txt, usr_stat_typ, usr_stat_reas_txt, usr_nme, usr_desc, usr_first_nme, usr_mid_nme, usr_last_nme, finr_oid)
SELECT 'ZmqRH7e7G1', NULL, 'benjamin.tremblay@nuveen.com', sysdate(), NULL, 'WSTATION', NULL, NULL, NULL, NULL, sysdate(), 'benjamin.tremblay@nuveen.com', NULL, NULL, NULL, NULL, NULL, 'benjamin.tremblay@nuveen.com', NULL, NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_ausr WHERE usr_id = 'benjamin.tremblay@nuveen.com');
INSERT INTO ft_t_ausr
(ausr_oid, org_id, usr_id, start_tms, end_tms, usr_typ, empl_oid, cst_id, inst_mnem, finsrl_typ, last_chg_tms, last_chg_usr_id, pswd_reset_fq_cnt, pswd_reset_tms, usr_pswd_txt, usr_stat_typ, usr_stat_reas_txt, usr_nme, usr_desc, usr_first_nme, usr_mid_nme, usr_last_nme, finr_oid)
SELECT 'aZmpG7@XG1', NULL, 'adam.somers@nuveen.com', sysdate(), NULL, 'WSTATION', NULL, NULL, NULL, NULL, sysdate(), 'adam.somers@nuveen.com', NULL, NULL, NULL, NULL, NULL, 'adam.somers@nuveen.com', NULL, NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_ausr WHERE usr_id = 'adam.somers@nuveen.com');
INSERT INTO ft_t_ausr
(ausr_oid, org_id, usr_id, start_tms, end_tms, usr_typ, empl_oid, cst_id, inst_mnem, finsrl_typ, last_chg_tms, last_chg_usr_id, pswd_reset_fq_cnt, pswd_reset_tms, usr_pswd_txt, usr_stat_typ, usr_stat_reas_txt, usr_nme, usr_desc, usr_first_nme, usr_mid_nme, usr_last_nme, finr_oid)
SELECT 'KKmrH7@x81', NULL, 'carmen.workman@nuveen.com', sysdate(), NULL, 'WSTATION', NULL, NULL, NULL, NULL, sysdate(), 'carmen.workman@nuveen.com', NULL, NULL, NULL, NULL, NULL, 'carmen.workman@nuveen.com', NULL, NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_ausr WHERE usr_id = 'carmen.workman@nuveen.com');
INSERT INTO ft_t_ausr
(ausr_oid, org_id, usr_id, start_tms, end_tms, usr_typ, empl_oid, cst_id, inst_mnem, finsrl_typ, last_chg_tms, last_chg_usr_id, pswd_reset_fq_cnt, pswd_reset_tms, usr_pswd_txt, usr_stat_typ, usr_stat_reas_txt, usr_nme, usr_desc, usr_first_nme, usr_mid_nme, usr_last_nme, finr_oid)
SELECT 'KlsWI7x8m1', NULL, 'lauren.stokes@nuveen.com', sysdate(), NULL, 'WSTATION', NULL, NULL, NULL, NULL, sysdate(), 'lauren.stokes@nuveen.com', NULL, NULL, NULL, NULL, NULL, 'lauren.stokes@nuveen.com', NULL, NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_ausr WHERE usr_id = 'lauren.stokes@nuveen.com');
