INSERT INTO ft_wf_utsk(usr_task_id, usr_task_nme, usr_task_desc, prnt_usr_task_id, asgn_ausr_oid, asgn_usr_grp_oid, asgn_usr_email_ind, usr_email_txt, supervisor_ausr_oid, supervisor_usr_grp_oid, usr_task_sql, approval_task_id, last_chg_tms, last_chg_usr_id, sender_email_id, reject_usr_email_ind, usr_task_typ, user_instruc_txt, usr_task_edit_ind, usr_task_save_ind, config_val_txt)
select 'SIMPLE_MAKER_CHECKER', 'Simple Maker Checker', 'Simple Maker Checker', NULL, NULL, NULL, 'N', '', NULL, NULL, 'select ''SIMPLE_MAKER_CHECKER_AUTH'' as SubTask from dual', NULL, sysdate(), 'user1', '', NULL, 'S', NULL, 'N', 'N', NULL
from dual where not exists (select 'x' from ft_wf_utsk where usr_task_id = 'SIMPLE_MAKER_CHECKER');
INSERT INTO ft_wf_utsk(usr_task_id, usr_task_nme, usr_task_desc, prnt_usr_task_id, asgn_ausr_oid, asgn_usr_grp_oid, asgn_usr_email_ind, usr_email_txt, supervisor_ausr_oid, supervisor_usr_grp_oid, usr_task_sql, approval_task_id, last_chg_tms, last_chg_usr_id, sender_email_id, reject_usr_email_ind, usr_task_typ, user_instruc_txt, usr_task_edit_ind, usr_task_save_ind, config_val_txt)
select 'SIMPLE_MAKER_CHECKER_SUBTASK', 'Maker Task', '', 'SIMPLE_MAKER_CHECKER', NULL, '7%7I01iOm1', 'N', '', NULL, '7%7I01iOm1', 'select ''SIMPLE_MAKER_CHECKER_AUTH'' as SubTask from dual', null, sysdate(), 'user2', '', NULL, 'S', NULL, 'Y', 'N', '{"commentsActions":["MANDATORY_REJECT","MANDATORY_REASSIGN","MANDATORY_COMPLETE","MANDATORY_CLOSE","MANDATORY_APPROVEANDSAVE"],"saveOnReject":false}'
from dual where not exists (select 'x' from ft_wf_utsk where usr_task_id = 'SIMPLE_MAKER_CHECKER_SUBTASK');
INSERT INTO ft_wf_utsk(usr_task_id, usr_task_nme, usr_task_desc, prnt_usr_task_id, asgn_ausr_oid, asgn_usr_grp_oid, asgn_usr_email_ind, usr_email_txt, supervisor_ausr_oid, supervisor_usr_grp_oid, usr_task_sql, approval_task_id, last_chg_tms, last_chg_usr_id, sender_email_id, reject_usr_email_ind, usr_task_typ, user_instruc_txt, usr_task_edit_ind, usr_task_save_ind, config_val_txt)
select 'SIMPLE_MAKER_CHECKER_AUTH', 'Checker Task', '', 'SIMPLE_MAKER_CHECKER_SUBTASK', NULL, '7%7K01iOm1', 'N', '', NULL, '7%7K01iOm1', '', NULL, sysdate(), 'user2', '', NULL, 'A', NULL, 'N', 'N', '{"commentsActions":["MANDATORY_REJECT","MANDATORY_COMPLETE","MANDATORY_CLOSE"],"saveOnReject":false}'
from dual where not exists (select 'x' from ft_wf_utsk where usr_task_id = 'SIMPLE_MAKER_CHECKER_AUTH');

update ft_wf_utsk set approval_task_id = 'SIMPLE_MAKER_CHECKER_AUTH' where usr_task_id = 'SIMPLE_MAKER_CHECKER_SUBTASK' ;


