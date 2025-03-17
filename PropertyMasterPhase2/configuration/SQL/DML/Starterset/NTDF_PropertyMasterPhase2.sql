INSERT INTO ft_t_ntdf
(appl_id, part_id, notfcn_id, dflt_severity_cde, last_chg_tms, last_chg_usr_id, rsolut_typ, excp_typ, technical_excp_ind)
select 'REST', 'REST', 90001, 40, sysdate(), 'NRE:CSTM', 'INVESTGT', NULL, null from dual where not exists (select 'x' from ft_t_ntdf where appl_id = 'REST' and part_id = 'REST' and notfcn_id = '90001');

