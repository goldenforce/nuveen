--MKEY for ICE APEX build - added on 11/12
INSERT INTO FT_O_MKEY (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'PEDF','EV_TYP','PEDF_EVTYP_NVN',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM FT_O_MKEY where match_key_nme= 'PEDF_EVTYP_NVN');
INSERT INTO FT_O_MKEY (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'PEDF','INSTR_ID','PEDF_EVTYP_NVN',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM FT_O_MKEY where match_key_nme= 'PEDF_EVTYP_NVN');
	
	
--MKEY for BPS
INSERT INTO FT_O_MKEY (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'TTCH','GUNT_OID','TTCH_MATCH_10',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM FT_O_MKEY where match_key_nme= 'TTCH_MATCH_10');
INSERT INTO FT_O_MKEY (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'TTCH','INSTR_ID','TTCH_MATCH_10',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM FT_O_MKEY where match_key_nme= 'TTCH_MATCH_10');


--MKEY for FRIP
INSERT INTO ft_o_mkey (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'FRIP','FINSRL_TYP','FRIP_MATCH_NVN',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM ft_o_mkey where match_key_nme= 'FRIP_MATCH_NVN');
INSERT INTO ft_o_mkey (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'FRIP','INSTR_ID','FRIP_MATCH_NVN',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM ft_o_mkey where match_key_nme= 'FRIP_MATCH_NVN');
INSERT INTO ft_o_mkey (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'FRIP','INST_MNEM','FRIP_MATCH_NVN',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM ft_o_mkey where match_key_nme= 'FRIP_MATCH_NVN');
INSERT INTO ft_o_mkey (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'FRIP','PRT_PURP_TYP','FRIP_MATCH_NVN',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM ft_o_mkey where match_key_nme= 'FRIP_MATCH_NVN');
		
--MKEY for BDCH
INSERT INTO ft_o_mkey (tbl_id,col_nme,match_key_nme,last_chg_tms,last_chg_usr_id) SELECT 'BDCH','INSTR_ID','BDCH_MATCH_NVN',SYSDATE(),'NUVEEN:CSTM' from dual where not exists (select 1 FROM ft_o_mkey where match_key_nme= 'BDCH_MATCH_NVN');				

--MKEY for CNT1
INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id) SELECT 'CNT1','WSO_CNTRCT_ID','CNT1_CNTRCTID',SYSDATE(),'NUVEEN:CSTM' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'CNT1' AND col_nme = 'WSO_CNTRCT_ID' AND match_key_nme = 'CNT1_CNTRCTID' );
INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id) select 'CNT1', 'INSTR_ID', 'CNT1_CNTRCTID', '2023-09-19 17:02:05.000', 'NUVEEN:CSTM' from DUAL where not exists (select 'X' from FT_O_MKEY where MATCH_KEY_NME = 'CNT1_CNTRCTID' and COL_NME = 'INSTR_ID');
	
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) SELECT 'MSC1','CUSIP','MSC1_MATCH_1',SYSDATE(),'NUVEEN:CSTM' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM FT_O_MKEY WHERE TBL_ID = 'MSC1' AND COL_NME = 'CUSIP' AND MATCH_KEY_NME = 'MSC1_MATCH_1');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) SELECT 'MSC1','ISIN','MSC1_MATCH_1',SYSDATE(),'NUVEEN:CSTM' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM FT_O_MKEY WHERE TBL_ID = 'MSC1' AND COL_NME = 'ISIN' AND MATCH_KEY_NME = 'MSC1_MATCH_1');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) SELECT 'MSC1','SEDOL','MSC1_MATCH_1',SYSDATE(),'NUVEEN:CSTM' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM FT_O_MKEY WHERE TBL_ID = 'MSC1' AND COL_NME = 'SEDOL' AND MATCH_KEY_NME = 'MSC1_MATCH_1');


-- Property Master Merge 24042024
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPST','PPRY_OID','PPST_STAT_DEF_ID',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPST' and col_nme='PPRY_OID' and match_key_nme='PPST_STAT_DEF_ID');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPST','START_TMS','PPST_STAT_DEF_ID',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPST' and col_nme='START_TMS' and match_key_nme='PPST_STAT_DEF_ID');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPST','STAT_DEF_ID','PPST_STAT_DEF_ID',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPST' and col_nme='STAT_DEF_ID' and match_key_nme='PPST_STAT_DEF_ID');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPID','PPRY_OID','PPID2_PROP_ID_CTXT',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPID' and col_nme='PPRY_OID' and match_key_nme='PPID2_PROP_ID_CTXT');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPID','PROP_ID_CTXT_TYP','PPID2_PROP_ID_CTXT',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPID' and col_nme='PROP_ID_CTXT_TYP' and match_key_nme='PPID2_PROP_ID_CTXT');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPID','START_TMS','PPID2_PROP_ID_CTXT',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPID' and col_nme='START_TMS' and match_key_nme='PPID2_PROP_ID_CTXT');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPID','PROP_ID','PPID1_PROP_ID_CTXT',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPID' and col_nme='PROP_ID' and match_key_nme='PPID1_PROP_ID_CTXT');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPID','PROP_ID_CTXT_TYP','PPID1_PROP_ID_CTXT',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPID' and col_nme='PROP_ID_CTXT_TYP' and match_key_nme='PPID1_PROP_ID_CTXT');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'PPID','START_TMS','PPID1_PROP_ID_CTXT',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='PPID' and col_nme='START_TMS' and match_key_nme='PPID1_PROP_ID_CTXT');

Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'CCRF','CROSS_REF_PURP_TYP','PPRY_MATCH_4',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='CCRF' and col_nme='CROSS_REF_PURP_TYP' and match_key_nme='PPRY_MATCH_4');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'CCRF','PPRY_OID','PPRY_MATCH_4',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='CCRF' and col_nme='PPRY_OID' and match_key_nme='PPRY_MATCH_4');
Insert into FT_O_MKEY (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID) select 'CCRF','START_TMS','PPRY_MATCH_4',CURRENT_TIMESTAMP,'NRE:CSTM' from dual where not exists (select '1' from ft_o_mkey where tbl_id='CCRF' and col_nme='START_TMS' and match_key_nme='PPRY_MATCH_4');

--Credit Scope

INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'GUNT','GU_NME','NVN_GUNT_1',SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'GUNT' AND col_nme = 'GU_NME' AND match_key_nme = 'NVN_GUNT_1' );

INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'GUNT','PRNT_GU_TYP','NVN_GUNT_1',SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'GUNT' AND col_nme = 'PRNT_GU_TYP' AND match_key_nme = 'NVN_GUNT_1' );

INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'GUNT','PRNT_GU_CNT','NVN_GUNT_1',SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'GUNT' AND col_nme = 'PRNT_GU_CNT' AND match_key_nme = 'NVN_GUNT_1' );