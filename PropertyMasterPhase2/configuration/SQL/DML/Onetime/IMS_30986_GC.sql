
INSERT INTO ft_t_idcs  select 'BUYUSR0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BB', 1, 'ISID', '2022-07-06 13:08:58.000', 'IMS-30986', 'G', NULL, NULL, NULL, NULL, null from dual where not exists (select 1 from ft_T_idcs where id_ctxt_typ = 'BB');

Update ft_t_isid  set global_uniq_ind = 'G' , last_chg_tms = current_date , last_chg_usr_id = 'IMS-30986' where id_ctxt_typ  ='BB';