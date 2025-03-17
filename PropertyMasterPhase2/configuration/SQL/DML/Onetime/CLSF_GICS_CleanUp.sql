DELETE FROM FT_T_ISCL where clsf_oid in (select clsf_oid FROM FT_T_INCL where INDUS_CL_SET_ID = 'GICS');
DELETE FROM FT_T_FICL where clsf_oid in (select clsf_oid FROM FT_T_INCL where INDUS_CL_SET_ID = 'GICS');
DELETE FROM FT_T_IRCL where clsf_oid in (select clsf_oid FROM FT_T_INCL where INDUS_CL_SET_ID = 'GICS');
DELETE FROM FT_T_INCL where INDUS_CL_SET_ID ='GICS';