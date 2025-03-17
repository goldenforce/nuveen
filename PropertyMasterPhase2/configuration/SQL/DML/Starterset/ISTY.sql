--ISTY update added on 1126 
update ft_t_isty 
set iss_typ_clsf_nme ='Bonds',last_chg_usr_id ='NUVEEN:CSTM',last_chg_tms =SYSDATE()
where iss_typ='CVTBOND';

--added on 12/25 for Futures
update ft_t_isty 
set iss_typ_clsf_nme ='Futures',last_chg_tms =SYSDATE(), last_chg_usr_id ='NUVEEN:CSTM'
where iss_typ in ('COMFUT','COFUTOPT','FUTURES');

--added on 20231014 for LevFin
update ft_t_isty set iss_typ_clsf_nme ='Options',last_chg_tms =SYSDATE(), last_chg_usr_id ='NUVEEN:CSTM' where iss_typ in ('CALL OPT','INDEX OP');
update ft_t_isty set iss_typ_clsf_nme ='Bonds'	,last_chg_tms =SYSDATE(), last_chg_usr_id ='NUVEEN:CSTM' where iss_typ in ('CORPBD');
update ft_t_isty set iss_typ_clsf_nme ='Preferred'	,last_chg_tms =SYSDATE(), last_chg_usr_id ='NUVEEN:CSTM' where iss_typ in ('CVTPFD');

--Credit Scope

INSERT INTO ft_t_isty (iss_typ, prnt_iss_typ, last_chg_tms, last_chg_usr_id, dec_prec_num, val_as_qty_ind, iss_typ_nme, iss_typ_desc, start_tms, data_stat_typ, data_src_id,iss_typ_clsf_nme)    SELECT 'CRDTISSU',NULL,SYSDATE(),'NUVEEN:CSTM',6,'N','Credit Issue','Credit Issue',SYSDATE(),'ACTIVE','','NuveenCreditIssue'      FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_isty WHERE iss_typ = 'CRDTISSU' );