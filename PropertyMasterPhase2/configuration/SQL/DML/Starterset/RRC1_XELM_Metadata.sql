INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'RRC1OID', 'Rating Recon Identifier', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'RRC1_OID'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='RRC1_OID');

INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'ISSRTNGOID', 'Issue Rating OID', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'ISS_RTNG_OID'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='ISS_RTNG_OID');

INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'FINSRTNGOID', 'Fins Rating OID', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'FINS_RTNG_OID'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='FINS_RTNG_OID');

INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'RTOPOID', 'Rating Opinions OID', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'RTOP_OID'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='RTOP_OID');

INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'TBLID', 'Table ID', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'TBL_ID'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='TBL_ID');

INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'LASTCHGTMS', 'Last Change Date/Time', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'LAST_CHG_TMS'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='LAST_CHG_TMS');

INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'LASTCHGUSRID', 'Last Change User ID', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'LAST_CHG_USR_ID'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='LAST_CHG_USR_ID');

INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'STARTTMS', 'Start Date/Time', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'START_TMS'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='START_TMS');


INSERT INTO ft_t_xelm
(segment_id, tbl_id, element_xml_tag, element_nme, last_chg_tms, last_chg_usr_id, col_nme)
SELECT 9000011, 'RRC1', 'ENDTMS', 'End Date/Time', CURRENT_TIMESTAMP, 'NUVEEN:CSTM', 'END_TMS'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_xelm WHERE segment_id ='9000011' AND tbl_id ='RRC1' AND col_nme='END_TMS');