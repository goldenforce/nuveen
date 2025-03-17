-- migration
-- Net Rentable Area
update ft_t_ppst set end_tms = sysdate() where stat_def_id ='NRERNTAR' and data_src_id <> 'YARDI' and end_tms is null;
-- Number of Floors
update ft_t_ppst set end_tms = sysdate() where stat_def_id ='NREFLRS' and data_src_id <> 'YARDI' and end_tms is null;
update ft_t_ppry set living_unit_cnt = null where data_src_id <> 'YARDI' and end_tms is null and living_unit_cnt is not null;
