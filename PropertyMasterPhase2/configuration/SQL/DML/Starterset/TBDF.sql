DELETE FROM FT_T_TBDF WHERE TBL_ID = 'CNT1';
Insert into FT_T_TBDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_NME,TBL_DESC,TBL_DDL_NME,TBL_CLSF_TYP,TBL_SUBJECT_AREA_NME,TBL_DATA_OWNER_NME,TBL_DATA_TYP,TBL_DATA_UPD_RULE_TYP,TBL_VIEW_NME,DATA_MODL_ID,CDC_ENABLED_IND)SELECT 'CNT1',TO_DATE('2023-09-18 18:26:22','YYYY-MM-DD HH24:MI:SS'),'AUTO','Loan Contract Details','Loan Contract Details','FT_E_CNT1','C','Custom','Custom','Client','UnRestricted','FT_E_CNT1',DATA_MODL_ID,'N' FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');

DELETE FROM FT_T_TBDF WHERE TBL_ID = 'NDF1';
Insert into FT_T_TBDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_NME,TBL_DESC,TBL_DDL_NME,TBL_CLSF_TYP,TBL_SUBJECT_AREA_NME,TBL_DATA_OWNER_NME,TBL_DATA_TYP,TBL_DATA_UPD_RULE_TYP,TBL_VIEW_NME,DATA_MODL_ID,CDC_ENABLED_IND)SELECT 'NDF1',sysdate(),'NUVEEN:CSTM','Nuveen Derived Fields','Nuveen Derived Fields','FT_E_NDF1','C','Custom','Custom','Client','UnRestricted','FT_E_NDF1',DATA_MODL_ID,'N' FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');

DELETE FROM FT_T_TBDF WHERE TBL_ID = 'MSC1';
INSERT INTO ft_t_tbdf(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind)select 'MSC1', '2023-01-20 20:10:39.000', 'NUVEEN:CSTM', '8.8.1.01', 'MSCI RI with BBCompanyID', 'MSCI RI with BBCompanyID', NULL, 'FT_E_MSC1', 'C', NULL, 'Custom', NULL, NULL, 'Custom', 'Client', 'UnRestricted', NULL, NULL, NULL, NULL, 'FT_E_MSC1', DATA_MODL_ID, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');

DELETE FROM FT_T_TBDF WHERE TBL_ID = 'NPF1';
INSERT INTO ft_t_tbdf(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind) SELECT 'NPF1', '2022-11-01 16:25:17.000', 'AUTO', '8.7.0.1', 'Nuveen Processing flow', 'Nuveen Processing flow', NULL, 'FT_E_NPF1', 'C', NULL, 'Custom', NULL, NULL, 'Custom', 'Client', 'UnRestricted', NULL, NULL, NULL, NULL, 'FT_E_NPF1', DATA_MODL_ID, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');

DELETE FROM FT_T_TBDF WHERE TBL_ID = 'NPP1';
INSERT INTO ft_t_tbdf(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind) SELECT 'NPP1', '2022-12-13 14:33:46.000', 'AUTO', '8.7.0.1', 'Nuveen Process flow Participants', 'Nuveen process flow participants', NULL, 'FT_E_NPP1', 'C', NULL, 'Custom', NULL, NULL, 'Custom', 'Client', 'UnRestricted', NULL, NULL, NULL, NULL, 'FT_E_NPP1', DATA_MODL_ID, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');

DELETE FROM FT_T_TBDF WHERE TBL_ID = 'PRA1';
INSERT INTO ft_t_tbdf(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind) SELECT 'PRA1', '2022-08-12 00:00:00.000', 'AUTO', '8.8.1.01', 'Pricing and Analytics Fields', 'Pricing and Analytics Fields for Nuveen', NULL, 'FT_E_PRA1', 'C', NULL, 'Custom', NULL, NULL, 'Custom', 'Client', 'UnRestricted', NULL, NULL, NULL, NULL, 'FT_E_PRA1', DATA_MODL_ID, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');

DELETE FROM FT_T_TBDF WHERE TBL_ID = 'UDF1';
INSERT INTO ft_t_tbdf(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind) SELECT 'UDF1', '2022-08-12 00:00:00.000', 'AUTO', '8.8.1.01', 'User defined fields', 'User defined fields', NULL, 'FT_E_UDF1', 'C', NULL, 'Custom', NULL, NULL, 'Custom', 'Client', 'UnRestricted', NULL, NULL, NULL, NULL, 'FT_E_UDF1', DATA_MODL_ID, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');

DELETE FROM FT_T_TBDF WHERE TBL_ID = 'UDR1';
INSERT INTO ft_t_tbdf(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind) SELECT 'UDR1', '2022-08-12 00:00:00.000', 'AUTO', '8.8.1.01', 'User defined Issuer Fields', 'User defined Issuer Fields', NULL, 'FT_E_UDR1', 'C', NULL, 'Custom', NULL, NULL, 'Custom', 'Client', 'UnRestricted', NULL, NULL, NULL, NULL, 'FT_E_UDR1', DATA_MODL_ID, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH');


DELETE FROM FT_T_TBDF WHERE TBL_ID = 'MSC1';
INSERT INTO ft_t_tbdf
(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind)
SELECT 'MSC1', SYSDATE(), 'NUVEEN:CSTM', '8.8.1.01', 'MSCI RI with BBCompanyID', 'MSCI RI with BBCompanyID', NULL, 'FT_E_MSC1', 'C', NULL, 'Custom', NULL, NULL, 'Custom', 'Client', 'UnRestricted', NULL, NULL, NULL, NULL, 'FT_E_MSC1', (SELECT DATA_MODL_ID FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH')), NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM FT_T_TBDF WHERE TBL_ID = 'MSC1' AND TBL_DDL_NME = 'FT_E_MSC1');


INSERT INTO ft_t_tbdf
(tbl_id, last_chg_tms, last_chg_usr_id, data_modl_ver_id, tbl_nme, tbl_desc, last_cmp_tms, tbl_ddl_nme, tbl_clsf_typ, tbl_prop_to_nme, tbl_subject_area_nme, tbl_prin_app_nme, tbl_owner_nme, tbl_data_owner_nme, tbl_data_typ, tbl_data_upd_rule_typ, tbl_obsolete_ind, vddb_shared_tbl_ind, prodctn_first_install_typ, prodctn_upd_typ, tbl_view_nme, data_modl_id, tbl_cmnt_txt, est_tbl_size_ind, logging_ind, oracle_init_trans_num, oracle_pct_free_num, dw_standalone_ind, cdc_enabled_ind, audit_enabled_ind, staging_enabled_ind, non_relational_typ, lock_occur_ind, bi_temporal_ind, car_enabled_ind)
select 'HLD1', sysdate(), 'NUVEEN:CSMT', '8.8.1.01', 'Instrument Held or Investable Indicator', 'Each occurrence of the  View stores the indicator wheather an instrument is Held or Investable.', NULL, 'FT_T_HLD1', 'V', NULL, 'Operational Table', 'GSO View', NULL, NULL, 'Work', 'Unrestricted', 'N', 'N', NULL, NULL, 'Instrument_Held_Investable_Ind', (SELECT DATA_MODL_ID FROM FT_T_DMDF WHERE DATA_MODL_ID IN ('GSDM','VDDB','DWH')) , NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
from dual where not exists (select 'x' from ft_t_tbdf where tbl_id = 'HLD1');