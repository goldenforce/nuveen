insert 	into 	ft_m_jbcf (jbcf_oid, 	job_name, 	job_desc, 	job_typ, 	job_run_day, 	job_start_time, 	job_end_time, 	job_run_freq, 	exp_run_dur, 	last_chg_tms, 	start_tms, 	end_tms, 	in_query, 	pub_query, 	val_query, 	result_column, 	to_mail, 	info_mail, 	task_start_check, 	multi_check, 	holiday_check, 	range_check) values 	 (new_oid(), 'Nuveen_LevFin_Fitch_Fileload', 'Nuveen_LevFin_Fitch_Fileload', 'Fileload', 'SAT', '08:00', '09:45', '1', 95, CURRENT_DATE, CURRENT_DATE, null, 'select  max(job_id)  as job_id , case when count(*) >=1  then ''FullLoadRatingForImplicit delete - Rating Fileload Job Completed Successfull!! OK'' else ''FullLoadRatingFor FitchImplicit delete - Rating Fileload Job not Completed Successfull!! KO'' end as result  from ft_t_jblg where job_config_txt = ''Rating Recon Fitch'' and job_stat_typ  = ''CLOSED'' and job_start_tms::date >= sysdate()::date', null, null, 'RESULT', 'gsodmonitoring@thegoldensource.com', 'ODAlerts@thegoldensource.com,sparmar@thegoldensource.com,aborse@thegoldensource.com', 'Y', 'N', 'N', 'N');


insert 	into 	ft_m_jbcf (jbcf_oid, 	job_name, 	job_desc, 	job_typ, 	job_run_day, 	job_start_time, 	job_end_time, 	job_run_freq, 	exp_run_dur, 	last_chg_tms, 	start_tms, 	end_tms, 	in_query, 	pub_query, 	val_query, 	result_column, 	to_mail, 	info_mail, 	task_start_check, 	multi_check, 	holiday_check, 	range_check) values 	 (new_oid(), 'Nuveen_LevFin_Moody_Fileload', 'Nuveen_LevFin_Moody_Fileload', 'Fileload', 'SAT', '10:00', '03:00', '1', 250, CURRENT_DATE, CURRENT_DATE, null, 'select  max(job_id)  as job_id , case when count(*) >=1  then ''FullLoadRatingForImplicit delete - Rating Fileload Job Completed Successfull!! OK'' else ''FullLoadRatingFor MoodyImplicit delete - Rating Fileload Job not Completed Successfull!! KO'' end as result  from ft_t_jblg where job_config_txt = ''Rating Recon Moody'' and job_stat_typ  = ''CLOSED'' and job_start_tms::date >= sysdate()::date', null, null, 'RESULT', 'gsodmonitoring@thegoldensource.com', 'ODAlerts@thegoldensource.com,sparmar@thegoldensource.com,aborse@thegoldensource.com', 'Y', 'N', 'N', 'N');

UPDATE ft_m_jbcf
SET job_name = 'Nuveen_LevFin_SOI_Rating_Fileload',
    job_desc = 'Nuveen_LevFin_SOI_Rating_Fileload',
    job_start_time = '00:30',
    job_end_time = '01:30',
    exp_run_dur = '70',
	last_chg_tms = CURRENT_DATE,
	start_tms=CURRENT_DATE,
    in_query = 'SELECT max(job_id) AS job_id, 
                       CASE 
                           WHEN count(*) >= 3 THEN ''SOI - IntradayRating Fileload Job Completed Successfully!! OK''
                           ELSE ''SOI - IntradayRating Fileload Job not Completed Successfully!! KO''
                       END AS result
                FROM ft_t_jblg
                WHERE job_config_txt IN (''RATINGS_DELTA'', ''Wrapper Fitch Custom'', ''DownloadFileFromSFTP'')
                AND job_stat_typ = ''CLOSED''
                AND job_start_tms::date >= CURRENT_DATE'
				where jbcf_oid='=000473301';

