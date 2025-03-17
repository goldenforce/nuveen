INSERT INTO ft_t_ntxt
(appl_id, part_id, notfcn_id, usr_cat_typ, nls_cde, last_chg_tms, last_chg_usr_id, notfcn_short_txt, notfcn_long_txt, notfcn_extnd_txt)
select 'REST', 'REST', 90001, 'DEFAULT', 'ENGLISH', sysdate(), 'NRE:CSTM', 'Google Maps Address Verification Failed.', 'Google Maps Address Verification Failed with error: /%errortext%/', 'Google Maps Address Verification Failed with error: /%errortext%/'
from dual where not exists (select 'x' from ft_t_ntxt where appl_id = 'REST' and part_id = 'REST' and notfcn_id = '90001');