
DELETE FROM FT_T_BECH WHERE  bdef_oid in (select bdef_oid from ft_T_bdef where bus_entity_data_nme = 'NuveenCreditIssue') and Cache_typ <> 'CONCRETE_JAR';

COMMIT;