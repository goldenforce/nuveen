CREATE OR REPLACE VIEW ft_v_jbc1
AS SELECT a.jbc1_oid,
    a.job_typ,
    a.job_name,
    a.job_status,
    a.run_time,
    a.alert_status,
    a.expected_start_time,
    a.actual_start_datetime,
    a.expected_end_time,
    a.actual_end_datetime,
    a.actual_run_time,
    a."DEFINED_SLA_BREACH_TIME(MINS)",
    a.sla_breached_status
   FROM ( SELECT concat(jbri.jbri_oid, '-', jbcf.jbcf_oid) AS jbc1_oid,
                CASE
                    WHEN (jbcf.job_name::text) ~~ '%Nuveen CreditScope FileLoad%'::text THEN concat(jbcf.job_typ, '-', 'Nuveen CreditScope Delta Ingestion')
                    WHEN (jbcf.job_name::text) ~~ '%Nuveen Muni Eagle FileLoad%'::text THEN concat(jbcf.job_typ, '-', 'Nuveen Eagle SOI Delta Ingestion')
                    WHEN (jbcf.job_name::text) ~~ '%Nuveen Muni SNP Ratings Delta FileLoad%'::text THEN concat(jbcf.job_typ, '-', 'Nuveen Muni SNP Ratings Delta Ingestion')
					WHEN (jbcf.job_name::text) ~~ '%Nuveen Muni Moodys Ratings Delta FileLoad%'::text THEN concat(jbcf.job_typ, '-', 'Nuveen Muni Moodys Ratings Delta Ingestion')
					WHEN (jbcf.job_name::text) ~~ '%Nuveen Muni Fitch Ratings Delta FileLoad%'::text THEN concat(jbcf.job_typ, '-', 'Nuveen Muni Fitch Ratings Delta Ingestion')
                    WHEN (jbcf.job_name::text) ~~ '%Nuveen Muni SMF Publish%'::text THEN concat(jbcf.job_typ, '-', 'Nuveen Muni Delta Publish')
					WHEN (jbcf.job_name::text) ~~ '%Nuveen Muni Issuer Publish%'::text THEN concat(jbcf.job_typ, '-', 'Nuveen Muni Issuer Delta Publish')
                    ELSE 'Other Fileload'::text
                END AS job_typ,
            jbcf.job_name,
            jbri.job_status,
            jbri.run_tms as run_time,
                CASE
                    WHEN jbri.alert_code = 0 THEN 'SUCCESS'::text
                    WHEN jbri.alert_code = 1 THEN 'FAILED'::text
                    WHEN jbri.alert_code = 3 THEN 'RUNNING'::text
                    WHEN jbri.alert_code = 4 THEN 'WAITING'::text
                    WHEN jbri.alert_code = 5 THEN 'FAILED AND ALERTED'::text
                    WHEN jbri.alert_code = 6 THEN 'SUCCESS'::text
                    ELSE 'CHECK'::text
                END AS alert_status,
            jbcf.job_start_time AS expected_start_time,
            jbri.job_start_time AS actual_start_datetime,
            jbcf.job_end_time AS expected_end_time,
            jbri.job_end_time AS actual_end_datetime,
            TO_CHAR((jbri.job_end_time- jbri.job_start_time), 'HH24:MI:SS') as actual_run_time,
            jbcf.exp_run_dur::text AS "DEFINED_SLA_BREACH_TIME(MINS)",
            jbri.sla_breached AS sla_breached_status
           FROM ft_m_jbcf jbcf,
            ft_m_jbri jbri
          WHERE jbcf.end_tms IS NULL AND jbcf.jbcf_oid::text = jbri.jbcf_oid::text) a
  WHERE a.job_typ <> 'Other Fileload'::text;