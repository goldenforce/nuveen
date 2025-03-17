INSERT INTO ft_t_idmv (intrnl_dmn_val_id,fld_data_cl_id,fld_id,appl_id,last_chg_tms,last_chg_usr_id,mod_rst_ind,intrnl_dmn_val_nme,intrnl_dmn_val_txt,intrnl_dmn_desc,tbl_id,col_nme,ds_id,qual_fld_id,qual_val_txt,dmn_set_id,meta_src_id,data_stat_typ,org_id,dmn_val_purp_typ,data_src_id)
SELECT 
	NEW_OID(),NULL,'00068599',NULL,current_date ,'NUVEEN:CSTM','N','SOFTDELT','SOFTDELT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'NUVEEN'
	FROM DUAL WHERE NOT EXISTS
	(SELECT 1 FROM FT_T_IDMV WHERE FLD_ID='00068599' AND intrnl_dmn_val_txt ='SOFTDELT');