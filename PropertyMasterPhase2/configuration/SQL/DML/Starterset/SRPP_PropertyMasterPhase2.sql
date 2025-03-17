INSERT INTO ft_t_srpp(srle_oid, sprf_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, sec_role_prof_desc, sec_prof_val_txt, entity_typ, enable_audit_ind, srpp_oid)
select 'NRESRLERAT', 'Cy510OhZ01', SYSDATE(), NULL, SYSDATE(), 'user1', NULL, 'editable', NULL, NULL, '*xx1m?iOm1'
from dual where not exists (select 'x' from ft_t_srpp where srle_oid = 'NRESRLERAT' and  sprf_oid in (select sprf_oid from ft_T_sprf where sec_prof_nme = 'all' and sec_prof_desc is null));

INSERT INTO ft_t_srpp(srle_oid, sprf_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, sec_role_prof_desc, sec_prof_val_txt, entity_typ, enable_audit_ind, srpp_oid)
select 'NRESRLERAT', 'GXBDGOC6m1', SYSDATE(), NULL, SYSDATE(), 'user1', 'SimpleMakerChecker', 'be', NULL, NULL, '*xx2m?iOm1'
from dual where not exists (select 'x' from ft_t_srpp where srle_oid = 'NRESRLERAT' and  sprf_oid in (select sprf_oid from ft_T_sprf where sec_prof_nme = 'PropertySubtype' and sec_prof_desc = 'GSO'));

INSERT INTO ft_t_srpp(srle_oid, sprf_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, sec_role_prof_desc, sec_prof_val_txt, entity_typ, enable_audit_ind, srpp_oid)
select 'NRESRLEDGV', 'Cy510OhZ01', SYSDATE(), NULL, SYSDATE(), 'user1', NULL, 'editable', NULL, NULL, '*xx3m?iOm1'
from dual where not exists (select 'x' from ft_t_srpp where srle_oid = 'NRESRLEDGV' and  sprf_oid in (select sprf_oid from ft_T_sprf where sec_prof_nme = 'all' and sec_prof_desc is null));

INSERT INTO ft_t_srpp(srle_oid, sprf_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, sec_role_prof_desc, sec_prof_val_txt, entity_typ, enable_audit_ind, srpp_oid)
select 'NRESRLEDGV', 'GXBDGOC6m1', SYSDATE(), NULL, SYSDATE(), 'user1', 'SimpleMakerChecker', 'be', NULL, NULL, '*xx4m?iOm1'
from dual where not exists (select 'x' from ft_t_srpp where srle_oid = 'NRESRLEDGV' and  sprf_oid in (select sprf_oid from ft_T_sprf where sec_prof_nme = 'PropertySubtype' and sec_prof_desc = 'GSO'));