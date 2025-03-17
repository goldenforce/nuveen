/*select indus_cl_set_id, cl_value ,level_num ,last_chg_usr_id,cl_nme ,cl_desc ,data_src_id,cross_ref_id  
from fT_t_incl where indus_cl_set_id ='BICSLVL1'
and last_chg_usr_id = 'TLNSM-1045' --'NUVEEN:CSTM'
order by 2;
*/
--Level2 updates for BICS to GICS matrix values in cross_ref_id

update FT_T_INCL set cross_ref_id = '50101020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='10' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50202020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='10' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='10' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30202030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='12' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30201020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='12' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10102020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='13' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10101020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='13' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10102030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='13' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10102040', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='13' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='14' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40101015', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='14' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40203010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='14' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35201010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='16' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35202010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='16' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='16' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20106020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='17' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='17' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15104050', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='18' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='18' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='19' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45301020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='19' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='20' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55105010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='20' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='20' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55105020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='20' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='20' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15101050', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='30' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15104050', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='30' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15103020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='30' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50101020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='31' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50201030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='31' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='31' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='32' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30202030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='33' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30101020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='33' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30201030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='33' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30101040', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='33' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10102040', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='34' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10102020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='34' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='34' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='35' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35202010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='36' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35203010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='36' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35102015', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='36' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='36' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35102020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='36' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20304010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='37' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='37' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20106020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='37' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20201050', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='37' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='38' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45301020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='38' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45202030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='38' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='39' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='39' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='50' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25302010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL1' and cl_value='56' and level_num='1' and last_chg_usr_id='NUVEEN:CSTM';