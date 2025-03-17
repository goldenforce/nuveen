--TBDF

INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'NCR1', 'FT_T_NCR1', SYSDATE(), 'NUVEEN:CSTM', 'Nuveen Credit Report', 'Each occurrence of the Credit Report Table records the bi-temporal data for a credit report', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'NCR1');

--FCDF

INSERT INTO ft_t_fcdf
(fld_data_cl_id, last_chg_tms, last_chg_usr_id, allow_mod_ind, data_typ, fld_len, fld_scale_len, mn_len, fill_char, just_typ, cl_nme, cl_desc, dspy_data_typ, dspy_int_num, dspy_dec_num, info_typ_nme)
Select 'NVNCMNT', sysdate(), 'NUVEEN:CSTM', 'N', 'VARCHAR', 40000, 0, 0, NULL, 'L', 'Nuveen Long Comments-V40000', 'VARCHAR(40000)', NULL, NULL, NULL, 'NUVEEN_LONG_COMMENT-V40000'
from dual where not exists (select 1 from ft_t_fcdf where fld_data_cl_id = 'NVNCMNT');

--FLDF

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10001', SYSDATE(), 'NUVEEN:CSTM', 'OID', NULL, 'NCR1_OID', 'L', 'T', 'NCR1_OID', 'NCR1_OID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_OID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10002', SYSDATE(), 'NUVEEN:CSTM', 'OID', NULL, 'NCR1_REVIEW_EMPL_OID', 'L', 'T', 'NCR1_REVIEW_EMPL_OID', 'NCR1_REVIEW_EMPL_OID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_REVIEW_EMPL_OID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10003', SYSDATE(), 'NUVEEN:CSTM', 'NVNCMNT', NULL, 'NCR1_CREDIT_REPORT_COMMENT', 'L', 'T', 'NCR1_CREDIT_REPORT_COMMENT', 'NCR1_CREDIT_REPORT_COMMENT'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_COMMENT');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10004', SYSDATE(), 'NUVEEN:CSTM', 'DATETIME', NULL, 'NCR1_INFO_DATE', 'L', 'T', 'NCR1_INFO_DATE', 'NCR1_INFO_DATE'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_INFO_DATE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10005', SYSDATE(), 'NUVEEN:CSTM', 'NVNCMNT', NULL, 'NCR1_CREDIT_REPORT_RATIONALE', 'L', 'T', 'NCR1_CREDIT_REPORT_RATIONALE', 'NCR1_CREDIT_REPORT_RATIONALE'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_RATIONALE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10006', SYSDATE(), 'NUVEEN:CSTM', 'OID', NULL, 'NCR1_RESP_EMPL_OID', 'L', 'T', 'NCR1_RESP_EMPL_OID', 'NCR1_RESP_EMPL_OID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_RESP_EMPL_OID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10007', SYSDATE(), 'NUVEEN:CSTM', 'OID', NULL, 'NCR1_AUTH_EMPL_OID', 'L', 'T', 'NCR1_AUTH_EMPL_OID', 'NCR1_AUTH_EMPL_OID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_AUTH_EMPL_OID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10008', SYSDATE(), 'NUVEEN:CSTM', 'DATETIME', NULL, 'NCR1_CREDIT_REPORT_DTE', 'L', 'T', 'NCR1_CREDIT_REPORT_DTE', 'NCR1_CREDIT_REPORT_DTE'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_DTE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10009', SYSDATE(), 'NUVEEN:CSTM', 'DTYPV40', NULL, 'NCR1_CREDIT_REPORT_OUTLOOK', 'L', 'T', 'NCR1_CREDIT_REPORT_OUTLOOK', 'NCR1_CREDIT_REPORT_OUTLOOK'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_OUTLOOK');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10010', SYSDATE(), 'NUVEEN:CSTM', 'VALUECDE', NULL, 'NCR1_NVN_LNG_RATING', 'L', 'T', 'NCR1_NVN_LNG_RATING', 'NCR1_NVN_LNG_RATING'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_NVN_LNG_RATING');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10011', SYSDATE(), 'NUVEEN:CSTM', 'LNGID100', NULL, 'NCR1_CREDIT_REPORT_NUM', 'L', 'T', 'NCR1_CREDIT_REPORT_NUM', 'NCR1_CREDIT_REPORT_NUM'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_NUM');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10012', SYSDATE(), 'NUVEEN:CSTM', 'EXLGID', NULL, 'NCR1_CREDIT_REPORT_STAT_TYP', 'L', 'T', 'NCR1_CREDIT_REPORT_STAT_TYP', 'NCR1_CREDIT_REPORT_STAT_TYP'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_STAT_TYP');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10013', SYSDATE(), 'NUVEEN:CSTM', 'EXLGID', NULL, 'NCR1_CREDIT_REPORT_TYP', 'L', 'T', 'NCR1_CREDIT_REPORT_TYP', 'NCR1_CREDIT_REPORT_TYP'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_TYP');
	  
INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NCR10014', SYSDATE(), 'NUVEEN:CSTM', 'CMNTTXT', NULL, 'NCR1_CREDIT_REPORT_SOURCES', 'L', 'T', 'NCR1_CREDIT_REPORT_SOURCES', 'NCR1_CREDIT_REPORT_SOURCES'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NCR1_CREDIT_REPORT_SOURCES');

--CLDF

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'LAST_CHG_USR_ID', '00003325', NULL, NULL, 'Y', 'VARCHAR(256)', 1, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.', 'VARCHAR', 256, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'LAST_CHG_USR_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'LAST_CHG_TMS', '00003320', NULL, NULL, 'Y', 'TIMESTAMP(0)', 2, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'DATA_STAT_TYP', '00161255', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Data Status', 'This field specifies the status of the data within this row of the table.  Normally the value of this field will be null indicating that the data is active.  Depending upon how a specific data vendor supplies data, other possible values include DELETED, REPLACED.  It is also possible to use this field to indicate the verification status of the data in this table row.  In that case possible values include UNVERIFIED and VERIFIED.', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'DATA_STAT_TYP');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'START_TMS', '00007490', NULL, NULL, 'Y', 'TIMESTAMP(0)', 4, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Start Date/Time', 'This field specifies the date and time from which the table occurrence is active.  In conjunction with the End Date/Time field, it determines the period when the table occurrence is active.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'START_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'END_TMS', '00007450', NULL, NULL, 'N', 'TIMESTAMP(0)', 5, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'End Date/Time', 'This field specifies the date and time after which the table occurrence is no longer active.  A value of null in this field indicates that an End Date/Time is not given and that the table occurrence is active.  The End Date/Time is used in conjunction w', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'END_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'DATA_SRC_ID', '00161254', NULL, NULL, 'N', 'VARCHAR(40)', 6, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Data Source ID', 'This field uniquely identifies the source that provided the data.  This is typically a vendor.  It is recommended that a unique mnemonic be supplied (for example, TELEKURS and EXTEL) in order to facilitate the identification of the data provider.', 'VARCHAR', 40, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'DATA_SRC_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'INST_MNEM', '00002995', NULL, NULL, 'Y', 'VARCHAR(10)', 7, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'INST_MNEM', 'INST_MNEM', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'INST_MNEM');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_OID', 'NCR10001', NULL, NULL, 'Y', 'VARCHAR(10)', 8, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_OID', 'NCR1_OID', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_REVIEW_EMPL_OID', 'NCR10002', NULL, NULL, 'N', 'VARCHAR(10)', 9, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_REVIEW_EMPL_OID', 'NCR1_REVIEW_EMPL_OID', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_REVIEW_EMPL_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_COMMENT', 'NCR10003', NULL, NULL, 'N', 'VARCHAR(40000)', 10, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_COMMENT', 'NCR1_CREDIT_REPORT_COMMENT', 'VARCHAR', 40000, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_COMMENT');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_INFO_DATE', 'NCR10004', NULL, NULL, 'N', 'TIMESTAMP(0)', 11, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_INFO_DATE', 'NCR1_INFO_DATE', 'TIMESTAMP', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_INFO_DATE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_RATIONALE', 'NCR10005', NULL, NULL, 'N', 'VARCHAR(40000)', 12, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_RATIONALE', 'NCR1_CREDIT_REPORT_RATIONALE', 'VARCHAR', 40000, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_RATIONALE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_RESP_EMPL_OID', 'NCR10006', NULL, NULL, 'N', 'VARCHAR(10)', 13, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_RESP_EMPL_OID', 'NCR1_RESP_EMPL_OID', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_RESP_EMPL_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_AUTH_EMPL_OID', 'NCR10007', NULL, NULL, 'N', 'VARCHAR(10)', 14, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_AUTH_EMPL_OID', 'NCR1_AUTH_EMPL_OID', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_AUTH_EMPL_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_DTE', 'NCR10008', NULL, NULL, 'N', 'TIMESTAMP(0)', 15, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_DTE', 'NCR1_CREDIT_REPORT_DTE', 'TIMESTAMP', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_DTE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_OUTLOOK', 'NCR10009', NULL, NULL, 'N', 'VARCHAR(40)', 16, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_OUTLOOK', 'NCR1_CREDIT_REPORT_OUTLOOK', 'VARCHAR', 40, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_OUTLOOK');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_NVN_LNG_RATING', 'NCR10010', NULL, NULL, 'N', 'VARCHAR(40)', 17, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_NVN_LNG_RATING', 'NCR1_NVN_LNG_RATING', 'VARCHAR', 40, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_NVN_LNG_RATING');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_NUM', 'NCR10011', NULL, NULL, 'N', 'VARCHAR(100)', 18, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_NUM', 'NCR1_CREDIT_REPORT_NUM', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_NUM');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_STAT_TYP', 'NCR10012', NULL, NULL, 'N', 'VARCHAR(40)', 19, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_STAT_TYP', 'NCR1_CREDIT_REPORT_STAT_TYP', 'VARCHAR', 40, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_STAT_TYP');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_TYP', 'NCR10013', NULL, NULL, 'N', 'VARCHAR(40)', 20, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_TYP', 'NCR1_CREDIT_REPORT_TYP', 'VARCHAR', 40, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_TYP');
	  
INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NCR1', 'NCR1_CREDIT_REPORT_SOURCES', 'NCR10014', NULL, NULL, 'N', 'VARCHAR(4000)', 21, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NCR1_CREDIT_REPORT_SOURCES', 'NCR1_CREDIT_REPORT_SOURCES', 'VARCHAR', 4000, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NCR1' AND col_nme = 'NCR1_CREDIT_REPORT_SOURCES');

--TBRL

INSERT INTO ft_t_tbrl (tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, rfi_rule_typ, last_chg_tms, last_chg_usr_id, logl_only_ind, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_req_ind, prnt_to_child_card_typ)
   SELECT 'NCR1FINS01', 'NCR1', 'FINS','NCR1F001', 'R', SYSDATE(), 'NUVEEN:CSTM', 'N', 'N', '0,1', 'N', '0,1' 
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrl WHERE tbrl_oid = 'NCR1FINS01');

INSERT INTO ft_t_tbrl (tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, rfi_rule_typ, last_chg_tms, last_chg_usr_id, logl_only_ind, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_req_ind, prnt_to_child_card_typ)
   SELECT 'NCR1EMPL01', 'NCR1', 'EMPL','NCR1F002', 'R', SYSDATE(), 'NUVEEN:CSTM', 'N', 'N', '0,1', 'N', '0,1' 
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrl WHERE tbrl_oid = 'NCR1EMPL01');

INSERT INTO ft_t_tbrl (tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, rfi_rule_typ, last_chg_tms, last_chg_usr_id, logl_only_ind, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_req_ind, prnt_to_child_card_typ)
   SELECT 'NCR1EMPL02', 'NCR1', 'EMPL','NCR1F003', 'R', SYSDATE(), 'NUVEEN:CSTM', 'N', 'N', '0,1', 'N', '0,1' 
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrl WHERE tbrl_oid = 'NCR1EMPL02');

INSERT INTO ft_t_tbrl (tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, rfi_rule_typ, last_chg_tms, last_chg_usr_id, logl_only_ind, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_req_ind, prnt_to_child_card_typ)
   SELECT 'NCR1EMPL03', 'NCR1', 'EMPL','NCR1F004', 'R', SYSDATE(), 'NUVEEN:CSTM', 'N', 'N', '0,1', 'N', '0,1' 
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrl WHERE tbrl_oid = 'NCR1EMPL03');

--TBRN

INSERT INTO ft_t_tbrn (tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1F00101', 'NCR1FINS01', 'NCR1', 'INST_MNEM', 1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrn WHERE tbrn_oid = 'NCR1F00101');

INSERT INTO ft_t_tbrn (tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1F00201', 'NCR1EMPL01', 'NCR1', 'NCR1_REVIEW_EMPL_OID', 1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrn WHERE tbrn_oid = 'NCR1F00201');

INSERT INTO ft_t_tbrn (tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1F00301', 'NCR1EMPL02', 'NCR1', 'NCR1_RESP_EMPL_OID', 1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrn WHERE tbrn_oid = 'NCR1F00301');

INSERT INTO ft_t_tbrn (tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1F00401', 'NCR1EMPL03', 'NCR1', 'NCR1_AUTH_EMPL_OID', 1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrn WHERE tbrn_oid = 'NCR1F00401');

--TIDX

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1P001==', 'NCR1', 'FT_T_NCR1_PK', 'P', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'NCR1P001==');

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1U001==', 'NCR1', 'FT_T_NCR1_U001', 'U', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'NCR1U001==');

--TIDC

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1P00101', 'NCR1P001==', 'NCR1', 'NCR1_OID',1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NCR1P00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1U00101', 'NCR1U001==', 'NCR1', 'INST_MNEM',1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NCR1U00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1U00102', 'NCR1U001==', 'NCR1', 'NCR1_CREDIT_REPORT_DTE',2, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NCR1U00102');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1U00103', 'NCR1U001==', 'NCR1', 'NCR1_CREDIT_REPORT_TYP',3, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NCR1U00103');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NCR1U00104', 'NCR1U001==', 'NCR1', 'START_TMS',4, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NCR1U00104');

--XSEG

INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT '8568832', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'NuveenCreditReport', 'NCR1' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = '8568832');

--XSTO

INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 8568832, 'NCR1', 'FINS', 'P', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = '8568832');

--CLMI

INSERT INTO ft_t_clmi (clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id)
   SELECT NEW_OID(), 'FINS', 'INST_MNEM', 'NCR1', 'INST_MNEM', 'STRING', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_clmi WHERE src_tbl_id = 'FINS' AND src_col_nme = 'INST_MNEM' AND trgt_tbl_id ='NCR1' AND trgt_col_nme = 'INST_MNEM');

--XELM

INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'LASTCHGUSRID', 'Last Change User ID', SYSDATE(), 'NUVEEN:CSTM', 'LAST_CHG_USR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'LASTCHGUSRID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'LASTCHGTMS', 'Last Change Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'LAST_CHG_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'LASTCHGTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'DATASTATTYP', 'Data Status', SYSDATE(), 'NUVEEN:CSTM', 'DATA_STAT_TYP' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'DATASTATTYP');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'STARTTMS', 'Start Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'START_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'STARTTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'ENDTMS', 'End Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'END_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'ENDTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'DATASRCID', 'Data Source ID', SYSDATE(), 'NUVEEN:CSTM', 'DATA_SRC_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'DATASRCID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'INSTMNEM', 'INST_MNEM', SYSDATE(), 'NUVEEN:CSTM', 'INST_MNEM' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'INSTMNEM');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1OID', 'NCR1_OID', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1OID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1REVIEWEMPLOID', 'NCR1_REVIEW_EMPL_OID', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_REVIEW_EMPL_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1REVIEWEMPLOID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTCOMMENT', 'NCR1_CREDIT_REPORT_COMMENT', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_COMMENT' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTCOMMENT');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1INFODATE', 'NCR1_INFO_DATE', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_INFO_DATE' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1INFODATE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTRATIONALE', 'NCR1_CREDIT_REPORT_RATIONALE', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_RATIONALE' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTRATIONALE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1RESPEMPLOID', 'NCR1_RESP_EMPL_OID', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_RESP_EMPL_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1RESPEMPLOID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1AUTHEMPLOID', 'NCR1_AUTH_EMPL_OID', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_AUTH_EMPL_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1AUTHEMPLOID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTDTE', 'NCR1_CREDIT_REPORT_DTE', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_DTE' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTDTE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTOUTLOOK', 'NCR1_CREDIT_REPORT_OUTLOOK', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_OUTLOOK' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTOUTLOOK');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1NVNLNGRATING', 'NCR1_NVN_LNG_RATING', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_NVN_LNG_RATING' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1NVNLNGRATING');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTNUM', 'NCR1_CREDIT_REPORT_NUM', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_NUM' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTNUM');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTSTATTYP', 'NCR1_CREDIT_REPORT_STAT_TYP', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_STAT_TYP' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTSTATTYP');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTTYP', 'NCR1_CREDIT_REPORT_TYP', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_TYP' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTTYP');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '8568832', 'NCR1', 'NCR1CREDITREPORTSOURCES', 'NCR1_CREDIT_REPORT_SOURCES', SYSDATE(), 'NUVEEN:CSTM', 'NCR1_CREDIT_REPORT_SOURCES' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 8568832 AND TBL_ID = 'NCR1' AND ELEMENT_XML_TAG = 'NCR1CREDITREPORTSOURCES');
