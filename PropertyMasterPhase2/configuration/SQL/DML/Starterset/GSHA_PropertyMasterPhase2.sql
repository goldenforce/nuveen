INSERT INTO ft_t_gsha
(gsha_oid, attr_nme, data_grp_nme, bus_entity_fld_nme, bus_entity_typ_nme, last_chg_tms, last_chg_usr_id)
select 'PPS1000002', 'MainEntityName', 'PropertySubtypeDG', 'PropertySubtype', 'PropertySubtype', NULL, null from dual 
where not exists (select 'x' from ft_t_gsha where bus_entity_typ_nme = 'PropertySubtype' and attr_nme = 'MainEntityName' and data_grp_nme = 'PropertySubtypeDG' and  bus_entity_fld_nme = 'PropertySubtype' );
