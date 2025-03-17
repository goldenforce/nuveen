-- TBDF
INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'NLD1', 'FT_T_NLD1', SYSDATE(), 'NUVEEN:CSTM', 'Nuveen Long Description', 'Each occurrence of the Nuveen long description table records data for long text fields', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'NLD1');

-- FLDF
INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NLD10001', SYSDATE(), 'NUVEEN:CSTM', 'OID', NULL, 'NLD1_OID', 'L', 'T', 'NLD1_OID', 'NLD1_OID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NLD1_OID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NLD10002', SYSDATE(), 'NUVEEN:CSTM', 'NVNCMNT', NULL, 'NLD1_LONG_DESC', 'L', 'T', 'NLD1_LONG_DESC', 'NLD1_LONG_DESC'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NLD1_LONG_DESC');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NLD10003', SYSDATE(), 'NUVEEN:CSTM', 'NVNCMNT', NULL, 'NLD1_USR_TXT_1', 'L', 'T', 'NLD1_USR_TXT_1', 'NLD1_USR_TXT_1'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NLD1_USR_TXT_1');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NLD10004', SYSDATE(), 'NUVEEN:CSTM', 'NVNCMNT', NULL, 'NLD1_USR_TXT_2', 'L', 'T', 'NLD1_USR_TXT_2', 'NLD1_USR_TXT_2'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NLD1_USR_TXT_2');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'NLD10005', SYSDATE(), 'NUVEEN:CSTM', 'NVNCMNT', NULL, 'NLD1_USR_TXT_3', 'L', 'T', 'NLD1_USR_TXT_3', 'NLD1_USR_TXT_3'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'NLD1_USR_TXT_3');

-- CLDF
INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'LAST_CHG_USR_ID', '00003325', NULL, NULL, 'Y', 'VARCHAR(256)', 1, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.', 'VARCHAR', 256, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'LAST_CHG_USR_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'LAST_CHG_TMS', '00003320', NULL, NULL, 'Y', 'TIMESTAMP(0)', 2, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'DATA_STAT_TYP', '00161255', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Data Status', 'This field specifies the status of the data within this row of the table.  Normally the value of this field will be ""null"" indicating that the data is active.  Depending upon how a specific data vendor supplies data, other possible values include ""DELETED"", ""REPLACED"".  It is also possible to use this field to indicate the verification status of the data in this table row.  In that case possible values include ""UNVERIFIED"" and ""VERIFIED"".', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'DATA_STAT_TYP');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'START_TMS', '00007490', NULL, NULL, 'Y', 'TIMESTAMP(0)', 4, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Start Date/Time', 'This field specifies the date and time from which the table occurrence is active.  In conjunction with the End Date/Time field, it determines the period when the table occurrence is active.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'START_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'END_TMS', '00007450', NULL, NULL, 'N', 'TIMESTAMP(0)', 5, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'End Date/Time', 'This field specifies the date and time after which the table occurrence is no longer active.  A value of ""null"" in this field indicates that an End Date/Time is not given and that the table occurrence is active.  The End Date/Time is used in conjunction w', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'END_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'DATA_SRC_ID', '00161254', NULL, NULL, 'N', 'VARCHAR(40)', 6, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'Data Source ID', 'This field uniquely identifies the source that provided the data.  This is typically a vendor.  It is recommended that a unique mnemonic be supplied (for example, ""TELEKURS"" and ""EXTEL"") in order to facilitate the identification of the data provider.', 'VARCHAR', 40, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'DATA_SRC_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'INSTR_ID', '00003010', NULL, NULL, 'N', 'VARCHAR(10)', 7, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'INSTR_ID', 'INSTR_ID', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'INSTR_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'INST_MNEM', '00002995', NULL, NULL, 'N', 'VARCHAR(10)', 8, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'INST_MNEM', 'INST_MNEM', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'INST_MNEM');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'NLD1_OID', 'NLD10001', NULL, NULL, 'Y', 'VARCHAR(10)', 9, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NLD1_OID', 'NLD1_OID', 'VARCHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'NLD1_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'NLD1_LONG_DESC', 'NLD10002', NULL, NULL, 'N', 'VARCHAR(40000)', 10, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NLD1_LONG_DESC', 'NLD1_LONG_DESC', 'VARCHAR', 40000, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'NLD1_LONG_DESC');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'NLD1_USR_TXT_1', 'NLD10003', NULL, NULL, 'N', 'VARCHAR(40000)', 11, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NLD1_USR_TXT_1', 'NLD1_USR_TXT_1', 'VARCHAR', 40000, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'NLD1_USR_TXT_1');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'NLD1_USR_TXT_2', 'NLD10004', NULL, NULL, 'N', 'VARCHAR(40000)', 12, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NLD1_USR_TXT_2', 'NLD1_USR_TXT_2', 'VARCHAR', 40000, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'NLD1_USR_TXT_2');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'NLD1', 'NLD1_USR_TXT_3', 'NLD10005', NULL, NULL, 'N', 'VARCHAR(40000)', 13, SYSDATE(), 'NUVEEN:CSTM', 'Y', 'NLD1_USR_TXT_3', 'NLD1_USR_TXT_3', 'VARCHAR', 40000, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'NLD1' AND col_nme = 'NLD1_USR_TXT_3');

-- TBRL
INSERT INTO ft_t_tbrl (tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, rfi_rule_typ, last_chg_tms, last_chg_usr_id, logl_only_ind, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_req_ind, prnt_to_child_card_typ)
   SELECT 'NLD1FINS01', 'NLD1', 'FINS','NLD1F001', 'R', SYSDATE(), 'NUVEEN:CSTM', 'N', 'N', '0,1', 'N', '0,1' 
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrl WHERE tbrl_oid = 'NLD1FINS01');

INSERT INTO ft_t_tbrl (tbrl_oid, tbl_id, ref_tbl_id, tbl_fgn_key_id, rfi_rule_typ, last_chg_tms, last_chg_usr_id, logl_only_ind, child_to_prnt_req_ind, child_to_prnt_card_typ, prnt_to_child_req_ind, prnt_to_child_card_typ)
   SELECT 'NLD1ISSU01', 'NLD1', 'ISSU','NLD1F002', 'R', SYSDATE(), 'NUVEEN:CSTM', 'N', 'N', '0,1', 'N', '0,1' 
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrl WHERE tbrl_oid = 'NLD1ISSU01');

-- TBRN
INSERT INTO ft_t_tbrn (tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1F00101', 'NLD1FINS01', 'NLD1', 'INST_MNEM', 1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrn WHERE tbrn_oid = 'NLD1F00101');

INSERT INTO ft_t_tbrn (tbrn_oid, tbrl_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1F00201', 'NLD1ISSU01', 'NLD1', 'INSTR_ID', 1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tbrn WHERE tbrn_oid = 'NLD1F00201');

-- TIDX
INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1P001==', 'NLD1', 'FT_T_NLD1_PK', 'P', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'NLD1P001==');

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1U001==', 'NLD1', 'FT_T_NLD1_U001', 'U', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'NLD1U001==');

-- TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1P00101', 'NLD1P001==', 'NLD1', 'NLD1_OID',1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NLD1P00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1U00101', 'NLD1U001==', 'NLD1', 'INST_MNEM',1, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NLD1U00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1U00102', 'NLD1U001==', 'NLD1', 'INSTR_ID',2, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NLD1U00102');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'NLD1U00103', 'NLD1U001==', 'NLD1', 'START_TMS',3, SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'NLD1U00103');


-- XSEG
INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT '9000012', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'ISSUNuveenLongDescription', 'NLD1' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = '9000012');
INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT '9000013', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'FINSNuveenLongDescription', 'NLD1' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = '9000013');

-- XSTO
INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 9000012, 'NLD1', 'ISSU', 'P', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = '9000012');
INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 9000013, 'NLD1', 'FINS', 'P', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = '9000013');


-- CLMI
INSERT INTO ft_t_clmi (clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id)
   SELECT NEW_OID(), 'ISSU', 'INSTR_ID', 'NLD1', 'INSTR_ID', 'STRING', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_clmi WHERE src_tbl_id = 'ISSU' AND src_col_nme = 'INSTR_ID' AND trgt_tbl_id ='NLD1' AND trgt_col_nme = 'INSTR_ID');
INSERT INTO ft_t_clmi (clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id)
   SELECT NEW_OID(), 'FINS', 'INST_MNEM', 'NLD1', 'INST_MNEM', 'STRING', SYSDATE(), 'NUVEEN:CSTM'
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_clmi WHERE src_tbl_id = 'FINS' AND src_col_nme = 'INST_MNEM' AND trgt_tbl_id ='NLD1' AND trgt_col_nme = 'INST_MNEM');

-- XELM
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'LASTCHGUSRID', 'Last Change User ID', SYSDATE(), 'NUVEEN:CSTM', 'LAST_CHG_USR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'LASTCHGUSRID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'LASTCHGTMS', 'Last Change Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'LAST_CHG_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'LASTCHGTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'DATASTATTYP', 'Data Status', SYSDATE(), 'NUVEEN:CSTM', 'DATA_STAT_TYP' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'DATASTATTYP');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'STARTTMS', 'Start Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'START_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'STARTTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'ENDTMS', 'End Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'END_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'ENDTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'DATASRCID', 'Data Source ID', SYSDATE(), 'NUVEEN:CSTM', 'DATA_SRC_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'DATASRCID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'INSTRID', 'INSTR_ID', SYSDATE(), 'NUVEEN:CSTM', 'INSTR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'INSTRID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'INSTMNEM', 'INST_MNEM', SYSDATE(), 'NUVEEN:CSTM', 'INST_MNEM' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'INSTMNEM');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'NLD1OID', 'NLD1_OID', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1OID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'NLD1LONGDESC', 'NLD1_LONG_DESC', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_LONG_DESC' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1LONGDESC');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'NLD1USRTXT1', 'NLD1_USR_TXT_1', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_USR_TXT_1' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1USRTXT1');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'NLD1USRTXT2', 'NLD1_USR_TXT_2', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_USR_TXT_2' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1USRTXT2');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000012', 'NLD1', 'NLD1USRTXT3', 'NLD1_USR_TXT_3', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_USR_TXT_3' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000012 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1USRTXT3');

INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'LASTCHGUSRID', 'Last Change User ID', SYSDATE(), 'NUVEEN:CSTM', 'LAST_CHG_USR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'LASTCHGUSRID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'LASTCHGTMS', 'Last Change Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'LAST_CHG_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'LASTCHGTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'DATASTATTYP', 'Data Status', SYSDATE(), 'NUVEEN:CSTM', 'DATA_STAT_TYP' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'DATASTATTYP');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'STARTTMS', 'Start Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'START_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'STARTTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'ENDTMS', 'End Date/Time', SYSDATE(), 'NUVEEN:CSTM', 'END_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'ENDTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'DATASRCID', 'Data Source ID', SYSDATE(), 'NUVEEN:CSTM', 'DATA_SRC_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'DATASRCID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'INSTRID', 'INSTR_ID', SYSDATE(), 'NUVEEN:CSTM', 'INSTR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'INSTRID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'INSTMNEM', 'INST_MNEM', SYSDATE(), 'NUVEEN:CSTM', 'INST_MNEM' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'INSTMNEM');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'NLD1OID', 'NLD1_OID', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1OID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'NLD1LONGDESC', 'NLD1_LONG_DESC', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_LONG_DESC' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1LONGDESC');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'NLD1USRTXT1', 'NLD1_USR_TXT_1', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_USR_TXT_1' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1USRTXT1');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'NLD1USRTXT2', 'NLD1_USR_TXT_2', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_USR_TXT_2' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1USRTXT2');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '9000013', 'NLD1', 'NLD1USRTXT3', 'NLD1_USR_TXT_3', SYSDATE(), 'NUVEEN:CSTM', 'NLD1_USR_TXT_3' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 9000013 AND TBL_ID = 'NLD1' AND ELEMENT_XML_TAG = 'NLD1USRTXT3');
