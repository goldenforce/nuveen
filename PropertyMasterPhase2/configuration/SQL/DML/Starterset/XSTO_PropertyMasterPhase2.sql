Insert into FT_T_XSTO(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,PRNT_TBL_ID,TBL_CLSF_TYP)
select 8080841,TO_DATE('2024-10-09 16:34:49','YYYY-MM-DD HH24:MI:SS'),'AUTO','PPS1','PPS1','P' from dual where not exists (select 'x' from ft_t_xsto where segment_id = 8080841 
and tbl_id = 'PPS1' and prnt_tbl_id = 'PPS1');