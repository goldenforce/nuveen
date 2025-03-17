UPDATE ft_cfg_vrty
           SET file_pattern_typ  =
                  (SELECT CASE
                             WHEN upper(SOURCE_ID) like
                                     '%ATNUVDM%'
                             THEN
                                REPLACE (file_pattern_typ, 'gs*.', 'gsuat*.')
             WHEN upper(SOURCE_ID) like
                                     '%DVNUVDM%'
                             THEN
                                REPLACE (file_pattern_typ, 'gs*.', 'gsdev*.')
                             WHEN upper(SOURCE_ID) like
                                     '%I1NUVDM%'
                             THEN
                                REPLACE (file_pattern_typ, 'gs*.', 'gssit*.')
                             WHEN upper(SOURCE_ID) like
                                     '%PDNUVDM%'
                             THEN
                                REPLACE (file_pattern_typ, 'gs*.', 'gsprd*.')
                                 WHEN upper(SOURCE_ID) like
                                     '%NUVEEN%'
                             THEN
                                REPLACE (file_pattern_typ, 'gs*.', 'gsldev*.')
                          END
                     FROM ft_T_cpdf)
         WHERE 1=1 and file_pattern_typ like 'gs*.%';
		 