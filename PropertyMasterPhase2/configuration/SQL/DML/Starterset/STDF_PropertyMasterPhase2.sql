INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
SELECT 'NREGFLRA', sysdate(), sysdate(), 'NRE:CSTM', 'CHARACT', 'NRE Gross Floor Area', 'NRE Gross Floor Area', 'ACTIVE', 'NRE'  
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NREGFLRA' AND end_tms IS NULL);

INSERT INTO ft_t_stdf 
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'NREGLSBT', sysdate(), NULL, sysdate(), 'NRE:CSTM', 'CHARACT', 'Property Sub Type', 'Property Sub Type', NULL, NULL, NULL, 'ACTIVE', NULL, null
from dual where not exists (select 'x' from ft_t_stdf where stat_def_id = 'NREGLSBT');