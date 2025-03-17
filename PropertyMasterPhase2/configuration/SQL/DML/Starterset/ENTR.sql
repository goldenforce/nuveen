
INSERT INTO ft_t_entr (org_id, ent_short_nme, ent_leg_nme, ent_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT 'NVN', 'Nuveen', 'Nuveen', 'Nuveen', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_entr WHERE org_id = 'NVN' AND end_tms IS NULL);