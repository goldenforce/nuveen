Insert into FT_T_XSTO(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,PRNT_TBL_ID,TBL_CLSF_TYP)Values(6778851,TO_DATE('2023-09-18 18:54:02','YYYY-MM-DD HH24:MI:SS'),'AUTO','CNT1','ISSU','P');


INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
VALUES(7783681, 'MSC1', 'MSC1', 'P', '2022-09-14 14:05:15.000', 'AUTO', NULL);
INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
VALUES(7868711, 'NDF1', 'ISSU', 'P', '2022-10-04 12:10:00.000', 'AUTO', NULL);
INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
VALUES(7880711, 'NPF1', 'NPF1', 'P', '2022-11-01 16:29:54.000', 'AUTO', NULL);
INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
VALUES(8082661, 'PRA1', 'ISSU', 'P', '2022-11-23 03:23:19.000', 'AUTO', NULL);
INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
VALUES(8568711, 'UDF1', 'ISSU', 'P', '2022-09-02 16:48:33.000', 'AUTO', NULL);
INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
VALUES(8568831, 'UDR1', 'FINS', 'P', '2022-08-12 00:00:00.000', 'AUTO', NULL);

INSERT INTO ft_t_xsto
(segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id, virtual_segment_ind)
 SELECT 7783681, 'MSC1', 'MSC1', 'P', SYSDATE(), 'NUVEEN:CSTM', NULL FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM FT_T_XSTO WHERE SEGMENT_ID = 7783681 AND TBL_ID = 'MSC1' AND PRNT_TBL_ID = 'MSC1');
