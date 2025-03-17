INSERT INTO FT_T_IDMV ("intrnl_dmn_val_id","fld_data_cl_id","fld_id","appl_id","last_chg_tms","last_chg_usr_id", "mod_rst_ind","intrnl_dmn_val_nme","intrnl_dmn_val_txt","intrnl_dmn_desc","tbl_id","col_nme","ds_id","qual_fld_id","qual_val_txt","dmn_set_id","meta_src_id","data_stat_typ","org_id", "dmn_val_purp_typ","data_src_id") SELECT new_oid(),null,(SELECT fld_id FROM FT_T_cldf where tbl_id = 'ISID' and col_nme = 'ID_CTXT_TYP'),null,now(),'NUVEEN:CSTM', 'N','Credit Scope Hub Issue ID','CSHUBISSID','Credit Scope Hub Issue ID',null,null,null,null,null,null,null,'ACTIVE',null,null,'CREDSCOPE'WHERE NOT EXISTS(SELECT 1 FROM FT_T_IDMV WHERE intrnl_dmn_val_txt = 'CSHUBISSID' and fld_id = (SELECT fld_id FROM FT_T_cldf where tbl_id = 'ISID' and col_nme = 'ID_CTXT_TYP'));



