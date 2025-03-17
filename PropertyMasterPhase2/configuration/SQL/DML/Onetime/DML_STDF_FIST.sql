INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'REPORTDT',now(),null,now(),'NUVEEN:CSTM','DATE','Latest Credit Report Date','Latest Credit Report Date',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'REPORTDT' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'UNSDG',now(),null,now(),'NUVEEN:CSTM','CHAR','Credit UN SDG','Credit UN SDG',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'UNSDG' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'EXTCREID',now(),null,now(),'NUVEEN:CSTM','CHAR','EXT CreditID','EXT CreditID',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'EXTCREID' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'EXTOBLID',now(),null,now(),'NUVEEN:CSTM','CHAR','EXT ObligorID','EXT ObligorID',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'EXTOBLID' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'CREDSRC',now(),null,now(),'NUVEEN:CSTM','CHAR','Credit Source','Credit Source',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'CREDSRC' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'DISCRED',now(),null,now(),'NUVEEN:CSTM','CHAR','Discontinued Credits','Discontinued Credits',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'DISCRED' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'JNUVEEN',now(),null,now(),'NUVEEN:CSTM','CHAR','J Nuveen','J Nuveen',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'JNUVEEN' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'LWCRRT',now(),null,now(),'NUVEEN:CSTM','CHAR','Credit Lowest Nuveen Rating','Credit Lowest Nuveen Rating',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'LWCRRT' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'LWCRAGRT',now(),null,now(),'NUVEEN:CSTM','CHAR','Credit Lowest Agency Rating','Credit Lowest Agency Rating',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'LWCRAGRT' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'TAXLOC',now(),null,now(),'NUVEEN:CSTM','CHAR','Tax Location','Tax Location',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'TAXLOC' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'TAXTYP',now(),null,now(),'NUVEEN:CSTM','CHAR','Tax Type','Tax Type',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'TAXTYP' and END_TMS IS NULL
);

INSERT INTO FT_T_STDF 
("stat_def_id","start_tms","end_tms","last_chg_tms","last_chg_usr_id","stat_val_typ","stat_nme","stat_desc","org_id","subd_org_id","subdiv_id","data_stat_typ","data_src_id","subd_oid") 
SELECT 
'CRLMDT',now(),null,now(),'NUVEEN:CSTM','DATE','Credit Last Modified Date Time','Credit Last Modified Date Time',null,null,null,'ACTIVE','CREDSCOPE',null
WHERE NOT EXISTS(
SELECT 1 FROM FT_T_STDF WHERE stat_def_id = 'CRLMDT' and END_TMS IS NULL
);

COMMIT;