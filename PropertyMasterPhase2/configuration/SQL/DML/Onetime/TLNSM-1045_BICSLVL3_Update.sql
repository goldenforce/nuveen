/*select indus_cl_set_id, cl_value ,level_num ,last_chg_usr_id,cl_nme ,cl_desc ,data_src_id,cross_ref_id  
from fT_t_incl where indus_cl_set_id ='BICSLVL3'
and last_chg_usr_id = 'TLNSM-1045' --'NUVEEN:CSTM'
order by 2;
*/
--Level3 updates for BICS to GICS matrix values in cross_ref_id

update FT_T_INCL set cross_ref_id = '50201010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50201030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50202020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101012' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50201020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101013' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50201040', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101013' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50203010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101014' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50101020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101110' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '50102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='101110' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25203010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='111010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='111011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25201030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='111012' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25201040', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='111013' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25202010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='111014' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25302010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='111110' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30202030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='121010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30201020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='121011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30203010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='121012' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30302010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='121013' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30101020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='121110' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '30101030', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='121111' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10102020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='131010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '10101020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='131011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='141010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40101015', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='141010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40203010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='141110' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40202010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='141111' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40203020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='141112' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '40301040', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='141210' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35201010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='161010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35202010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='161010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35102020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='161011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '35101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='161012' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20106020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20105010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20104010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171012' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20106020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171013' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20106010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171014' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20106020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171015' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20107010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171110' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '20103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='171113' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='181010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='181011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15103020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='181012' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='181012' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15105020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='181013' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '15104050', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='181014' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45301020', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='191011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45103010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='191110' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '45102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='191111' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55101010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='201010' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55102010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='201011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '55104010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='201011' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
update FT_T_INCL set cross_ref_id = '25302010', last_chg_tms=SYSDATE(),last_chg_usr_id='TLNSM-1045' where indus_cl_Set_id='BICSLVL3' and cl_value='561112' and level_num='3' and last_chg_usr_id='NUVEEN:CSTM';
