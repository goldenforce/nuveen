INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid) 
select '7%7I01iOm1', 21, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP1' and end_tms is null)
);

INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7I01iOm1', 23, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user2', (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP1' and end_tms is null));

INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7I01iOm1', 41, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'lauren.stokes@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'lauren.stokes@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP1' and end_tms is null));

INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7I01iOm1', 42, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'adam.somers@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'adam.somers@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP1' and end_tms is null));

INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7I01iOm1', 43, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'benjamin.tremblay@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'benjamin.tremblay@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP1' and end_tms is null)
);

INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7I01iOm1', 44, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'carmen.workman@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'carmen.workman@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP1' and end_tms is null));






INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7K01iOm1', 22, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP2' and end_tms is null));
INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7K01iOm1', 24, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user2', (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP2' and end_tms is null));
INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7K01iOm1', 45, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'lauren.stokes@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'lauren.stokes@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP2' and end_tms is null));
INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7K01iOm1', 46, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'adam.somers@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'adam.somers@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP2' and end_tms is null));
INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7K01iOm1', 47, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'benjamin.tremblay@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'benjamin.tremblay@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP2' and end_tms is null));
INSERT INTO ft_t_augp(prnt_usr_grp_oid, prt_num, usr_grp_oid, end_tms, start_tms, prt_purp_typ, prt_desc, last_chg_tms, last_chg_usr_id, ausr_oid)
select '7%7K01iOm1', 48, NULL, NULL, sysdate(), NULL, NULL, sysdate(), 'user1', (select ausr_oid from ft_t_ausr where usr_id = 'carmen.workman@nuveen.com' and end_tms is null)
from dual where not exists (select 'x' from ft_t_augp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'carmen.workman@nuveen.com' and end_tms is null) 
and prnt_usr_grp_oid = (select usr_grp_oid from ft_t_augr where usr_grp_id = 'PROPGRP2' and end_tms is null));
