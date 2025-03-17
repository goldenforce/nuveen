INSERT INTO ft_t_augr(usr_grp_oid, org_id, subd_org_id, subdiv_id, usr_grp_id, end_tms, start_tms, grp_purp_typ, grp_nme, grp_desc, last_chg_tms, last_chg_usr_id, appl_id, usr_grp_stat_typ, subd_oid)
select '7%7I01iOm1', NULL, NULL, NULL, 'PROPGRP1', NULL, SYSDATE(), 'taskasgn', 'Property Master Assignee', 'Property Master Asignee', SYSDATE(), 'user1', NULL, NULL, NULL
from dual where not exists (select 'x' from ft_t_augr where usr_grp_id = 'PROPGRP1');
INSERT INTO ft_t_augr(usr_grp_oid, org_id, subd_org_id, subdiv_id, usr_grp_id, end_tms, start_tms, grp_purp_typ, grp_nme, grp_desc, last_chg_tms, last_chg_usr_id, appl_id, usr_grp_stat_typ, subd_oid)
select '7%7K01iOm1', NULL, NULL, NULL, 'PROPGRP2', NULL, SYSDATE(), 'taskauth', 'Property Master Authorizer', 'Property Master Authorizer', SYSDATE(), 'user1', NULL, NULL, NULL
from dual where not exists (select 'x' from ft_t_augr where usr_grp_id = 'PROPGRP2');