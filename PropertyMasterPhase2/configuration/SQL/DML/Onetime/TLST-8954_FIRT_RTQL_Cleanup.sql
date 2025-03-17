--Script to terminate the DERIVED ratings created via Moody's and add a set match key rule to supress rtng_id uniqueness on FIRT.
Update ft_t_rtql set end_tms =SYSDATE(),last_chg_usr_id = 'TLNSM-185' where fins_rtng_oid  in (select fins_rtng_oid from ft_t_firt WHERE rtng_stat_typ ='DERIVED' and (sys_eff_end_tms  is null or end_tms is null)); 

update ft_t_firt set sys_eff_end_tms  = SYSDATE(), last_chg_usr_id ='TLNSM-185' WHERE rtng_stat_typ ='DERIVED' and (sys_eff_end_tms  is null or end_tms is null); 


