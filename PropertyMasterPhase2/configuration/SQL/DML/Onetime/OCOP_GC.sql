INSERT INTO ft_be_ocop
(ocop_oid, ocdf_oid, occur_opt_typ, occur_opt_val_txt, occur_opt_from_ver_id, occur_opt_to_ver_id, last_chg_tms, last_chg_usr_id, busent_nmespc_nme)
select '=000000000868354', '007m+98C2eu4a005', 'DEFAULT_MATCH_KEY', 'GUNT_MATCH_1', NULL, NULL, '2023-09-18 21:30:49.000', 'GSource_UI', 'GSC' from dual 
where not exists (select 1 from ft_be_ocop where ocdf_oid = (select ocdf_oid from ft_be_ocdf where occur_nme = 'ISGU_TRADING_GUNT') and occur_opt_typ = 'DEFAULT_MATCH_KEY' and 
occur_opt_val_txt='GUNT_MATCH_1');

INSERT INTO ft_be_ocop
(ocop_oid, ocdf_oid, occur_opt_typ, occur_opt_val_txt, occur_opt_from_ver_id, occur_opt_to_ver_id, last_chg_tms, last_chg_usr_id, busent_nmespc_nme)
select  '=000000000868355', '007m+98C2eu4a005', 'LOOKUP_ERR_LEVEL', 'ERROR', NULL, NULL, '2023-09-18 21:30:49.000', 'GSource_UI', 'GSC' from dual 
where not exists (select 1 from ft_be_ocop where ocdf_oid =  (select ocdf_oid from ft_be_ocdf where occur_nme = 'ISGU_TRADING_GUNT') and occur_opt_typ = 'LOOKUP_ERR_LEVEL' and 
occur_opt_val_txt='ERROR');

INSERT INTO ft_be_ocop
(ocop_oid, ocdf_oid, occur_opt_typ, occur_opt_val_txt, occur_opt_from_ver_id, occur_opt_to_ver_id, last_chg_tms, last_chg_usr_id, busent_nmespc_nme)
select '=000000000868356', '007m+98C2eu4a005', 'LOOKUP_ERR_TXT', NULL, NULL, NULL, '2023-09-18 21:30:49.000', 'GSource_UI', 'GSC'from dual 
where not exists (select 1 from ft_be_ocop where ocdf_oid =  (select ocdf_oid from ft_be_ocdf where occur_nme = 'ISGU_TRADING_GUNT') and occur_opt_typ = 'LOOKUP_ERR_TXT' );

INSERT INTO ft_be_ocop
(ocop_oid, ocdf_oid, occur_opt_typ, occur_opt_val_txt, occur_opt_from_ver_id, occur_opt_to_ver_id, last_chg_tms, last_chg_usr_id, busent_nmespc_nme)
select  '=000000000868357', '007m+98C2eu4a005', 'DEFAULT_ACTION', 'REFERENCE', NULL, NULL, '2023-09-18 21:30:49.000', 'GSource_UI', 'GSC'from dual 
where not exists (select 1 from ft_be_ocop where ocdf_oid =  (select ocdf_oid from ft_be_ocdf where occur_nme = 'ISGU_TRADING_GUNT') and occur_opt_typ = 'DEFAULT_ACTION' and 
occur_opt_val_txt='REFERENCE');


-- ISGU_TRADING_GUNT
update ft_be_ocfv set occur_ref_col_nme  ='PRNT_GU_CNT' where ocdf_oid = '007m+98C2eu4a005' and ocfv_oid = '007m+98C2eu4a007' and occur_ref_col_nme ='GU_CNT';
update ft_be_ocfv set occur_ref_col_nme  ='PRNT_GU_TYP' where ocdf_oid = '007m+98C2eu4a005' and ocfv_oid = '007m+98C2eu4a008' and occur_ref_col_nme ='GU_TYP';
update ft_be_ocfp set occur_col_nme  ='PRNT_GU_ID' where ocdf_oid = '007m+98C2eu4a005' and ocfp_oid = '007m+98C2eu4a009' and occur_col_nme ='GU_ID';