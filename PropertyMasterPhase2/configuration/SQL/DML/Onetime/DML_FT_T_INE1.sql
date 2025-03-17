--TBDF
insert into ft_T_tbdf (tbl_id,last_chg_tms,last_chg_usr_id,data_modl_ver_id,tbl_nme,tbl_desc,tbl_ddl_nme,tbl_clsf_typ,tbl_subject_area_nme,tbl_data_owner_nme,tbl_data_typ,tbl_data_upd_rule_typ,tbl_view_nme,data_modl_id,cdc_enabled_ind)
select 'INE1',current_date,'NUVEEN:CSTM','8.8.1.01','Institution Details Extended','Institution Details Extended','FT_E_INE1','C','Custom','Custom','Client','UnRestricted','FT_E_INE1','GSDM','N'
from dual where not exists (select 1 from ft_T_tbdf where tbl_id='INE1');

--XSEG
INSERT INTO ft_t_xseg
(segment_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, locked_by_usr_id, segment_nme, segment_desc, dtd_bin, dup_insert_ind, segment_typ, virtual_segment_ind)
SELECT 7868712, SYSDATE(), NULL, SYSDATE(), 'NUVEEN:CSTM', NULL, 'InstitutionDetailsExtended', 'INE1', NULL, NULL, NULL, NULL FROM DUAL WHERE NOT EXISTS 
(SELECT '1' FROM FT_T_XSEG WHERE SEGMENT_ID = 7868712 AND SEGMENT_NME = 'InstitutionDetailsExtended');

--XSTO
INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
select 7868712, 'INE1', 'FINS', 'P', '2024-11-25 00:00:00.000', 'AUTO', NULL from dual where not EXISTS
(select 1 from ft_T_xsto where segment_id='7868712');



--FLDF
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10001',current_date,'NUVEEN:CSTM','OID','INE1_OID','T','INE1_OID' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10001');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10002',current_date,'NUVEEN:CSTM','BETEXT','INSTITUTION_TYP','T','Extended Institution Type' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10002');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10003',current_date,'NUVEEN:CSTM','BETEXT','INST_AUTHORIZER','T','Institution Authorizer' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10003');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10004',current_date,'NUVEEN:CSTM','BEDATE','CHARTER_RENEWAL_DTE','T','Institution Charter Renewal Date' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10004');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10005',current_date,'NUVEEN:CSTM','BETEXT','AUTHORIZED_GRADE','T','Institution Authorized Grade' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10005');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10006',current_date,'NUVEEN:CSTM','BETEXT','ENROL_CPCT','T','Institution Enrollment Capacity' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10006');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10007',current_date,'NUVEEN:CSTM','BETEXT','INST_LOCATION','T','Institution Location' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10007');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10008',current_date,'NUVEEN:CSTM','BETEXT','INST_METRO_SVRC_AREA','T','Institution Metro Serive Area' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10008');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10009',current_date,'NUVEEN:CSTM','BETEXT','INST_FCLTY_TYP','T','Facility Type' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10009');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10010',current_date,'NUVEEN:CSTM','BETEXT','EDU_MGMNT_CORP','T','Education Management Corporation' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10010');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10011',current_date,'NUVEEN:CSTM','BETEXT','INST_MRKT_SRVC_AREA','T','Institution Market Service Area' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10011');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10012',current_date,'NUVEEN:CSTM','BETEXT','INST_MRKT_TYP','T','Institution Market Type' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10012');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10013',current_date,'NUVEEN:CSTM','BETEXT','INST_SPORNSORSHIP','T','Institution Sponsorship' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10013');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10014',current_date,'NUVEEN:CSTM','BETEXT','INST_SYSTEM_TYP','T','Institution System Type' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10014');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10015',current_date,'NUVEEN:CSTM','BETEXT','COMPETATIVE_ENV','T','Institution Competative Environment' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10015');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10016',current_date,'NUVEEN:CSTM','BETEXT','INST_PROPERTY_NME','T','Institution Property Name' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10016');
insert into ft_T_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,ddl_nme,fld_used_by_typ,fld_nme) select 'INE10017',current_date,'NUVEEN:CSTM','BETEXT','INST_SERVICE_TYP','T','Institution Service Type' from dual where not exists (select 1 from ft_T_fldf where FLD_ID='INE10017');


--CLDF
insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INE1_OID','INE10001','Y','VARCHAR(10)','01',current_date,'NUVEEN:CSTM','INE1 OID','VARCHAR',10,0,0,'INE1_OID','OBJECT_IDENTIFIER','INE1 OID' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INE1_OID');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INSTITUTION_TYP','INE10002','N','VARCHAR(255)','01',current_date,'NUVEEN:CSTM','Extended Institution Type','VARCHAR',255,0,0,'INSTITUTION_TYP','STANDARD_BE_TEXT','Extended Institution Type' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INSTITUTION_TYP');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_AUTHORIZER','INE10003','N','VARCHAR(255)','02',current_date,'NUVEEN:CSTM','Institution Authorizer','VARCHAR',255,0,0,'INST_AUTHORIZER','STANDARD_BE_TEXT','Institution Authorizer' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_AUTHORIZER');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','CHARTER_RENEWAL_DTE','INE10004','N','TIMESTAMP(0)','03',current_date,'NUVEEN:CSTM','Institution Charter Renewal Date','DATE',0,0,0,'CHARTER_RENEWAL_DTE','STANDARD_BE_TEXT','Institution Charter Renewal Date' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='CHARTER_RENEWAL_DTE');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','AUTHORIZED_GRADE','INE10005','N','VARCHAR(255)','04',current_date,'NUVEEN:CSTM','Institution Authorized Grade','VARCHAR',255,0,0,'AUTHORIZED_GRADE','STANDARD_BE_TEXT','Institution Authorized Grade' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='AUTHORIZED_GRADE');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','ENROL_CPCT','INE10006','N','VARCHAR(255)','05',current_date,'NUVEEN:CSTM','Institution Enrollment Capacity','VARCHAR',255,0,0,'ENROL_CPCT','STANDARD_BE_TEXT','Institution Enrollment Capacity' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='ENROL_CPCT');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_LOCATION','INE10007','N','VARCHAR(255)','06',current_date,'NUVEEN:CSTM','Institution Location','VARCHAR',255,0,0,'INST_LOCATION','STANDARD_BE_TEXT','Institution Location' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_LOCATION');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_METRO_SVRC_AREA','INE10008','N','VARCHAR(255)','07',current_date,'NUVEEN:CSTM','Institution Metro Serive Area','VARCHAR',255,0,0,'INST_METRO_SVRC_AREA','STANDARD_BE_TEXT','Institution Metro Serive Area' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_METRO_SVRC_AREA');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_FCLTY_TYP','INE10009','N','VARCHAR(255)','08',current_date,'NUVEEN:CSTM','Facility Type','VARCHAR',255,0,0,'INST_FCLTY_TYP','STANDARD_BE_TEXT','Facility Type' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_FCLTY_TYP');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','EDU_MGMNT_CORP','INE10010','N','VARCHAR(255)','09',current_date,'NUVEEN:CSTM','Education Management Corporation','VARCHAR',255,0,0,'EDU_MGMNT_CORP','STANDARD_BE_TEXT','Education Management Corporation' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='EDU_MGMNT_CORP');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_MRKT_SRVC_AREA','INE10011','N','VARCHAR(255)','10',current_date,'NUVEEN:CSTM','Institution Market Service Area','VARCHAR',255,0,0,'INST_MRKT_SRVC_AREA','STANDARD_BE_TEXT','Institution Market Service Area' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_MRKT_SRVC_AREA');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_MRKT_TYP','INE10012','N','VARCHAR(255)','11',current_date,'NUVEEN:CSTM','Institution Market Type','VARCHAR',255,0,0,'INST_MRKT_TYP','STANDARD_BE_TEXT','Institution Market Type' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_MRKT_TYP');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_SPORNSORSHIP','INE10013','N','VARCHAR(255)','12',current_date,'NUVEEN:CSTM','Institution Sponsorship','VARCHAR',255,0,0,'INST_SPORNSORSHIP','STANDARD_BE_TEXT','Institution Sponsorship' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_SPORNSORSHIP');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_SYSTEM_TYP','INE10014','N','VARCHAR(255)','13',current_date,'NUVEEN:CSTM','Institution System Type','VARCHAR',255,0,0,'INST_SYSTEM_TYP','STANDARD_BE_TEXT','Institution System Type' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_SYSTEM_TYP');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','COMPETATIVE_ENV','INE10015','N','VARCHAR(255)','14',current_date,'NUVEEN:CSTM','Institution Competative Environment','VARCHAR',255,0,0,'COMPETATIVE_ENV','STANDARD_BE_TEXT','Institution Competative Environment' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='COMPETATIVE_ENV');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_PROPERTY_NME','INE10016','N','VARCHAR(255)','15',current_date,'NUVEEN:CSTM','Institution Property Name','VARCHAR',255,0,0,'INST_PROPERTY_NME','STANDARD_BE_TEXT','Institution Property Name' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_PROPERTY_NME');

insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
Select 'INE1','INST_SERVICE_TYP','INE10017','N','VARCHAR(255)','16',current_date,'NUVEEN:CSTM','Institution Service Type','VARCHAR',255,0,0,'INST_PROPERTY_NME','STANDARD_BE_TEXT','Institution Service Type' from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_SERVICE_TYP');



insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
	 Select 'INE1','DATA_SRC_ID','00161254','N','VARCHAR(40)',1003,current_date,'NUVEEN:CSTM','Data Source ID','VARCHAR',40,0,0,'DATA_SRC_ID','DATA_SOURCE_IDENTIFIER',NULL from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='DATA_SRC_ID' and tbl_id='INE1');
	 
insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
 	 Select 'INE1','END_TMS','00007450','N','TIMESTAMP(0)',1005,current_date,'NUVEEN:CSTM','End Date/Time','DATE',0,0,0,'END_TMS','DATE/TIME',NULL from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='END_TMS'  and tbl_id='INE1');
	 
insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
	 Select 'INE1','LAST_CHG_TMS','00003320','N','TIMESTAMP(0)',1002,current_date,'NUVEEN:CSTM','Last Change Date/Time','DATE',0,0,0,'LAST_CHG_TMS','LAST_CHANGE_DATE/TIME',NULL from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='LAST_CHG_TMS'  and tbl_id='INE1');
	 
insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt)
	 Select 'INE1','LAST_CHG_USR_ID','00003325','N','VARCHAR(256)',1001,current_date,'NUVEEN:CSTM','Last Change User ID','VARCHAR',256,0,0,'LAST_CHG_USR_ID','USER_IDENTIFIER',NULL from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='LAST_CHG_USR_ID'  and tbl_id='INE1');
	 	 
insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt) 
	 Select 'INE1','START_TMS','00007490','N','TIMESTAMP(0)',1004,current_date,'NUVEEN:CSTM','Start Date/Time','DATE',0,0,0,'START_TMS','DATE/TIME',NULL from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='START_TMS'  and tbl_id='INE1');
	 
insert into ft_T_cldf 
(tbl_id,col_nme,fld_id,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,logl_nme,ddl_base_data_typ,ddl_data_len,ddl_data_prec_num,ddl_data_scale_num,col_view_nme,info_typ_nme,dspy_caption_txt) 
	 select 'INE1','INST_MNEM','00002995','Y','VARCHAR(10)',1006,current_date,'GS:MSYS','Financial Institution OID','VARCHAR',10,NULL,NULL,'Financial_Institution_OID','OBJECT_IDENTIFIER',NULL from dual WHERE not exists (SELECT 1 FROM FT_T_CLDF WHERE COL_NME='INST_MNEM'  and tbl_id='INE1');
	 


--TIDX
insert into ft_T_tidx (tidx_oid,tbl_id,tbl_index_nme,tbl_index_typ,last_chg_tms,last_chg_usr_id)
select 'INE1P001==','INE1','FT_T_INE1_PK','P',current_date,'AUTO' from dual where not exists (select 1 from ft_T_tidx where tidx_oid='INE1P001==');

insert into ft_T_tidx (tidx_oid,tbl_id,tbl_index_nme,tbl_index_typ,last_chg_tms,last_chg_usr_id)
select 'INE1U001==','INE1','FT_T_INE1_U001','U',current_date,'AUTO' from dual where not exists (select 1 from ft_T_tidx where tidx_oid='INE1U001==');


--TIDC
insert into ft_T_tidc (tidc_oid,tidx_oid,tbl_id,col_nme,col_sq_num,last_chg_tms,last_chg_usr_id)
select 'INE1P00101','INE1P001==','INE1','INE1_OID','1',current_date,'AUTO' from dual where not exists (select 1 from ft_T_tidc where tidc_oid='INE1P00101');

insert into ft_T_tidc (tidc_oid,tidx_oid,tbl_id,col_nme,col_sq_num,last_chg_tms,last_chg_usr_id)
select 'INE1U00101','INE1U001==','INE1','INST_MNEM','1',current_date,'AUTO' from dual where not exists (select 1 from ft_T_tidc where tidc_oid='INE1U00101');
insert into ft_T_tidc (tidc_oid,tidx_oid,tbl_id,col_nme,col_sq_num,last_chg_tms,last_chg_usr_id)
select 'INE1U00102','INE1U001==','INE1','INSTITUTION_TYP','2',current_date,'AUTO' from dual where not exists (select 1 from ft_T_tidc where tidc_oid='INE1U00102');
insert into ft_T_tidc (tidc_oid,tidx_oid,tbl_id,col_nme,col_sq_num,last_chg_tms,last_chg_usr_id)
select 'INE1U00103','INE1U001==','INE1','START_TMS','3',current_date,'AUTO' from dual where not exists (select 1 from ft_T_tidc where tidc_oid='INE1U00103');

--CLMI
insert into ft_T_clmi (clmi_oid,src_tbl_id,src_col_nme,trgt_tbl_id,trgt_col_nme,pgm_data_typ,last_chg_tms,last_chg_usr_id)
select 'FINSINEF01', 'FINS','INST_MNEM','INE1','INST_MNEM','STRING',current_date,'NUVEEN:CSTM' from dual where not exists (select 1 from ft_T_clmi where clmi_oid='FINSINEF01');

--TBRL
INSERT INTO ft_t_tbrl (tbrl_oid,tbl_id,ref_tbl_id,tbl_fgn_key_id,last_chg_tms,last_chg_usr_id,logl_only_ind,rfi_rule_typ,child_to_prnt_req_ind,child_to_prnt_card_typ,prnt_to_child_req_ind,prnt_to_child_card_typ) 
	 select 'INE1FINS01','INE1','FINS','INE1F001',Current_date,'AUTO','N','R','N','0,1','N','0,M' from dual where not exists (select 1 from ft_t_tbrl where tbrl_oid='INE1FINS01');
	 
--TBRN
INSERT INTO ft_t_tbrn (tbrn_oid,tbrl_oid,tbl_id,col_nme,col_sq_num,last_chg_tms,last_chg_usr_id) 
	 select 'INE1F00101','INE1FINS01','INE1','INST_MNEM',1,current_date,'NUVEEN:CSTM' from dual where not exists (select 1 from ft_t_tbrn where tbrn_oid='INE1F00101');
	 
--XELM
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','AUTHORIZEDGRADE','Institution Authorized Grade',current_date,'AUTO','AUTHORIZED_GRADE' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='AUTHORIZED_GRADE');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','CHARTERRENEWALDTE','Institution Charter Renewal Date',current_date,'AUTO','CHARTER_RENEWAL_DTE' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='CHARTER_RENEWAL_DTE');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','COMPETATIVEENV','Institution Competative Environment',current_date,'AUTO','COMPETATIVE_ENV' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='COMPETATIVE_ENV');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','DATASRCID','Data Source ID',current_date,'AUTO','DATA_SRC_ID' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='DATA_SRC_ID');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','EDUMGMNTCORP','Education Management Corporation',current_date,'AUTO','EDU_MGMNT_CORP' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='EDU_MGMNT_CORP');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','ENDTMS','End Date/Time',current_date,'AUTO','END_TMS' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='END_TMS');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','ENROLCPCT','Institution Enrollment Capacity',current_date,'AUTO','ENROL_CPCT' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='ENROL_CPCT');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INE1OID','INE1 OID',current_date,'AUTO','INE1_OID' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INE1_OID');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTITUTIONTYP','Extended Institution Type',current_date,'AUTO','INSTITUTION_TYP' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INSTITUTION_TYP');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTAUTHORIZER','Institution Authorizer',current_date,'AUTO','INST_AUTHORIZER' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_AUTHORIZER');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTFCLTYTYP','Facility Type',current_date,'AUTO','INST_FCLTY_TYP' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_FCLTY_TYP');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTLOCATION','Institution Location',current_date,'AUTO','INST_LOCATION' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_LOCATION');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTMETROSVRCAREA','Institution Metro Serive Area',current_date,'AUTO','INST_METRO_SVRC_AREA' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_METRO_SVRC_AREA');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTMNEM','Financial Institution OID',current_date,'AUTO','INST_MNEM' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_MNEM');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTMRKTSRVCAREA','Institution Market Service Area',current_date,'AUTO','INST_MRKT_SRVC_AREA' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_MRKT_SRVC_AREA');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTMRKTTYP','Institution Market Type',current_date,'AUTO','INST_MRKT_TYP' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_MRKT_TYP');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTPROPERTYNME','Institution Property Name',current_date,'AUTO','INST_PROPERTY_NME' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_PROPERTY_NME');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTSPORNSORSHIP','Institution Sponsorship',current_date,'AUTO','INST_SPORNSORSHIP' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_SPORNSORSHIP');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTSYSTEMTYP','Institution System Type',current_date,'AUTO','INST_SYSTEM_TYP' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_SYSTEM_TYP');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','LASTCHGTMS','Last Change Date/Time',current_date,'AUTO','LAST_CHG_TMS' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='LAST_CHG_TMS');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','LASTCHGUSRID','Last Change User ID',current_date,'AUTO','LAST_CHG_USR_ID' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='LAST_CHG_USR_ID');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','STARTTMS','Start Date/Time',current_date,'AUTO','START_TMS' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='START_TMS');
INSERT INTO ft_t_xelm (segment_id,tbl_id,element_xml_tag,element_nme,last_chg_tms,last_chg_usr_id,col_nme) Select '7868712','NDF1','INSTSERVICETYP','Institution Service Type',current_date,'AUTO','INST_SERVICE_TYP' from dual where not exists (select 1 from ft_T_xelm where segment_id='7868712' and col_nme='INST_SERVICE_TYP');


--MKEY
insert into ft_o_mkey (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id)
select 'INE1','INSTITUTION_TYP','INE1_KEY_1',current_date,'NUVEEN:CSTM' from dual where not exists (select 1 from ft_o_mkey where match_key_nme='INE1_KEY_1' and col_nme='INSTITUTION_TYP');

insert into ft_o_mkey (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id)
select 'INE1','INST_MNEM','INE1_KEY_1',current_date,'NUVEEN:CSTM' from dual where not exists (select 1 from ft_o_mkey where match_key_nme='INE1_KEY_1' and col_nme='INST_MNEM');