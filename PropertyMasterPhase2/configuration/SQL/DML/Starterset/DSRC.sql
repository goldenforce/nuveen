INSERT INTO FT_T_DSRC (DATA_SRC_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_SRC_NME) SELECT 'NRE',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'NRE:CSTM','NRE'  FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_T_DSRC WHERE DATA_SRC_ID = 'NRE');
INSERT INTO FT_T_DSRC (DATA_SRC_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_SRC_NME) SELECT 'DEALPATH',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'NRE:CSTM','DEALPATH'  FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_T_DSRC WHERE DATA_SRC_ID = 'DEALPATH');
INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'NUVEEN',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','Eagle EDI','Eagle EDI' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='NUVEEN');
INSERT INTO FT_T_DSRC (DATA_SRC_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_SRC_NME) SELECT 'YARDI',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'NRE:CSTM','YARDI'  FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_T_DSRC WHERE DATA_SRC_ID = 'YARDI');

INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'EAGLESOI',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','Eagle SOI','Eagle SOI' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='EAGLESOI');

INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'MSCI RI',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','MSCI RI','Morgan Stanley Capital International RI' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='MSCI RI');

INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'FACTSET',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','FACTSET','FactSet Securities Custom' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='FACTSET');

INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'CSCOPE',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','Eagle Credit Scope','Eagle Credit Scope' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='CSCOPE');

--DSRC for Nuveen LevFin Sources
INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'MARKIT_LRD',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','Markit LRD','Markit Loans Reference Data' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='MARKIT_LRD');
INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'WSO_ADMIN',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','WSO Admin','Wall Street Office Admin' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='WSO_ADMIN');
INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'WSO_WEB',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','WSO Web','Wall Street Office Web' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='WSO_WEB');

INSERT INTO ft_t_dsrc
(data_src_id, org_id, subd_org_id, subdiv_id, inst_mnem, finsrl_typ, start_tms, data_stat_typ, last_chg_tms, last_chg_usr_id, data_src_addr_txt, mail_addr_id, data_src_nme, data_src_desc, end_tms, msg_fmt_mnem, global_data_prov_ind, prnt_data_src_id, finr_oid, subd_oid)
select 'NuveenLevFin', NULL, NULL, NULL, NULL, NULL, '2022-05-27 19:38:13.000', 'ACTIVE', '2022-05-27 19:38:13.000', 'NUVEEN:CSTM', NULL, NULL, 'NuveenLevFin', 'NuveenLevFin', NULL, NULL, NULL, NULL, NULL, null
from dual where not exists (select '1' from ft_t_dsrc where data_src_id='NuveenLevFin');


update ft_t_dsrc set data_src_nme = 'Eagle EDI' , data_src_desc = 'Eagle EDI' where data_SrC_id = 'NUVEEN';

--Credit Scope

INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) SELECT 'CREDSCOPE',SYSDATE(),SYSDATE(),'NUVEEN:CSTM','Credit Scope','Credit Scope' from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='CREDSCOPE');