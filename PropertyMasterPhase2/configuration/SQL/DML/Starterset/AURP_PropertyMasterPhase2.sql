INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null), 'NRESRLERAT', SYSDATE(), NULL, SYSDATE(), 'user2', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null) and srle_oid='NRESRLERAT');
INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null), 'NRESRLERAT', SYSDATE(), NULL, SYSDATE(), 'user2', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null) and srle_oid='NRESRLERAT');
INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null), 'NRESRLEDGV', SYSDATE(), NULL, SYSDATE(), 'user3', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user2' and end_tms is null) and srle_oid='NRESRLEDGV');
INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null), 'NRESRLEDGV', SYSDATE(), NULL, SYSDATE(), 'user2', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'user3' and end_tms is null) and srle_oid='NRESRLEDGV');


INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'carmen.workman@nuveen.com' and end_tms is null), 'NRESRLEDGV', SYSDATE(), NULL, SYSDATE(), 'user1', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'carmen.workman@nuveen.com' and end_tms is null) and srle_oid='NRESRLEDGV');
INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'lauren.stokes@nuveen.com' and end_tms is null), 'NRESRLEDGV', SYSDATE(), NULL, SYSDATE(), 'user1', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'lauren.stokes@nuveen.com' and end_tms is null) and srle_oid='NRESRLEDGV');
INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'benjamin.tremblay@nuveen.com' and end_tms is null), 'NRESRLEDGV', SYSDATE(), NULL, SYSDATE(), 'user1', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'benjamin.tremblay@nuveen.com' and end_tms is null) and srle_oid='NRESRLEDGV');
INSERT INTO ft_t_aurp
(ausr_oid, srle_oid, start_tms, end_tms, last_chg_tms, last_chg_usr_id, usr_role_desc)
SELECT (select ausr_oid from ft_t_ausr where usr_id = 'adam.somers@nuveen.com' and end_tms is null), 'NRESRLERAT', SYSDATE(), NULL, SYSDATE(), 'user1', NULL
FROM DUAL WHERE NOT EXISTS(SELECT 'x' FROM ft_t_aurp where ausr_oid in (select ausr_oid from ft_t_ausr where usr_id = 'adam.somers@nuveen.com' and end_tms is null) and srle_oid='NRESRLERAT');
