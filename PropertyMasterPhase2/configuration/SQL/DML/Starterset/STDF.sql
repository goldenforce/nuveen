--Lev Fin Inserts
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NAMOISBL', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Amt Out Issuer Bonds Loans', 'Amt Out Issuer Bonds Loans', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NAMOISBL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NLDAMTOI', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Loan Distribution Amt Out Issuer', 'Loan Distribution Amt Out Issuer', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NLDAMTOI' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NAMTOUMM', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Amount Outstanding(MMM)', 'Amount Outstanding(MMM)', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NAMTOUMM' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NMIDYLMT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Mid Yield To Maturity', 'Mid Yield To Maturity', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NMIDYLMT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVPRNTCK', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Parent Ticker', 'Parent Ticker', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVPRNTCK' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NDYNXCPN', sysdate(), sysdate(), 'NUVEEN:CSTM', 'INTEGER', 'Days to Next Coupon', 'Days to Next Coupon', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NDYNXCPN' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NLDAOISU', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Loan Distribution Amount Out Issuer Subs', 'Loan Distribution Amount Out Issuer Subs', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NLDAOISU' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NDEFNTIK', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Debt To Equity Fundamentals Ticker', 'Debt To Equity Fundamentals Ticker', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NDEFNTIK' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NFNDDATE', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Funding Date', 'Funding Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NFNDDATE' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NHRDCALL', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Hard Call', 'Hard Call', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NHRDCALL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NISOCOBL', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'ISO Country of Obligor', 'ISO Country of Obligor', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NISOCOBL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NLTANNDT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Latest Announcement Date', 'Latest Announcement Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NLTANNDT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NPDLANDT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Period of Latest Announcement Date', 'Period of Latest Announcement Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NPDLANDT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVSENIOR', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Senior', 'Senior', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVSENIOR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVSUBORD', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Subordinated', 'Subordinated', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVSUBORD' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSUPPRIO', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Super Priority', 'Super Priority', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSUPPRIO' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVUNSECU', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Unsecured', 'Unsecured', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVUNSECU' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NMWTERDT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Make Whole Termination Date', 'Make Whole Termination Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NMWTERDT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSCPRCDT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Security Pricing Date', 'Security Pricing Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSCPRCDT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NLNAMRDT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Loan Amended and Restated Date', 'Loan Amended and Restated Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NLNAMRDT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NREINVDT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Re-invest End Date', 'Re-invest End Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NREINVDT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSPONLED', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Sponsor Led', 'Sponsor Led', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSPONLED' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSTRCTYP', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Structure Type', 'Structure Type', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSTRCTYP' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSPLCICW', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'SPLT Local Cur Issuer Credit Rtng Watch', 'SPLT Local Cur Issuer Credit Rtng Watch', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSPLCICW' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVCVMFLG', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Covenant Maintenance Flag', 'Covenant Maintenance Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVCVMFLG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVCVSPFL', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Covenant Springing Flag', 'Covenant Springing Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVCVSPFL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVESGISR', sysdate(), sysdate(), 'NUVEEN:CSTM', 'INTEGER', 'TFI ESG Internal Score', 'TFI ESG Internal Score', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVESGISR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVESGRTC', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'TFI ESG Rating Cast', 'TFI ESG Rating Cast', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVESGRTC' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVESGRTI', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'TFI ESG Rating Issuer', 'TFI ESG Rating Issuer', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVESGRTI' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVBNSPRA', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Benchmark Spread Adjustment', 'Benchmark Spread Adjustment', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVBNSPRA' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVANLNME', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Primary Analyst Name', 'Primary Analyst Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVANLNME' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NAGTBKID', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Markit Agent Bank ID', 'Markit Agent Bank ID', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NAGTBKID' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NAGBKNME', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Agent Bank Name', 'Agent Bank Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NAGBKNME' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NAGTCONT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Agent Bank Contact Name', 'Agent Bank Contact Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NAGTCONT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NAGTPHON', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Agent Bank Contact PhoneNumber', 'Agent Bank Contact PhoneNumber', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NAGTPHON' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVAGTEML', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Agent Bank Contact Email', 'Agent Bank Contact Email', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVAGTEML' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NBKDLNME', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Bank Deal Name', 'Bank Deal Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NBKDLNME' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NBKDLSPR', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Sponsor', 'Sponsor', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NBKDLSPR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNLCHDT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'Loan Launch Date', 'Loan Launch Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNLCHDT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVPYFQID', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Coupon Payment Frequency ID', 'Coupon Payment Frequency ID', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVPYFQID' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NALINCAP', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Nuveen Base Rate All In Cap', 'Nuveen Base Rate All In Cap', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NALINCAP' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NALINFLR', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Nuveen Base Rate All In Floor', 'Nuveen Base Rate All In Floor', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NALINFLR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NCVLTIND', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Covenant Lite Indicator', 'Covenant Lite Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NCVLTIND' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVPIKABL', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'PIKable Indicator', 'PIKable Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVPIKABL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NDELDRAW', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Delayed Draw Indicator', 'Delayed Draw Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NDELDRAW' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVDIPIND', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Dip Indicator', 'Dip Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVDIPIND' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NTRACINT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Trade With Accrued Int Indicator', 'Trade With Accrued Int Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NTRACINT' AND end_tms IS NULL);


INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSYNTIND', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'WSO Synthetic Indicator', 'WSO Synthetic Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSYNTIND' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'WSOASSID', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'WSO ASSET ID', 'WSO ASSET ID', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'WSOASSID' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'WSOFCLTY', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'WSO Facility ID', 'WSO Facility ID', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'WSOFCLTY' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NCOVNTYP', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Covenant Type', 'Nuveen Covenant Type', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NCOVNTYP' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NLFCLONT', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Lev Fin CLONote Flag', 'Nuveen Lev Fin CLONote Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NLFCLONT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NCVBYMGR', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Covered By Manager Indicator', 'Covered By Manager Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NCVBYMGR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NINTGSEC', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Intangible Secured Indicator', 'Intangible Secured Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NINTGSEC' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVSTKSEC', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Stock Secured Indicator', 'Stock Secured Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVSTKSEC' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NMNSTSEC', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Mainly Stock Secured Indicator', 'Mainly Stock Secured Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NMNSTSEC' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NOPCOSTC', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'OpCo Stock Secured Indicator', 'OpCo Stock Secured Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NOPCOSTC' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NLNLSTOU', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'WSO First Lien Last Out Indicator', 'WSO First Lien Last Out Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NLNLSTOU' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVFINLSE', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Finance Lease Indicator', 'Finance Lease Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVFINLSE' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NPIKABLE', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Fully PIKable Indicator', 'Fully PIKable Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NPIKABLE' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NFLLYPIK', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Fully PIKing Indicator', 'Fully PIKing Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NFLLYPIK' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NPRTLPIK', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Partial PIKable Indicator', 'Partial PIKable Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NPRTLPIK' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVPSTPIK', sysdate(), sysdate(), 'NUVEEN:CSTM', 'DATEONLY', 'First Post PIKInterest Payment Date', 'First Post PIKInterest Payment Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVPSTPIK' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVPOFLAG', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Principal Only Indicator', 'Principal Only Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVPOFLAG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVIOFLAG', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Interest Only Indicator', 'Interest Only Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVIOFLAG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVPIKRTE', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Pik Rate', 'Pik Rate', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVPIKRTE' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSFOFLAG', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Sfo Indicator', 'Sfo Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSFOFLAG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NFEEACRL', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Fee Indicator', 'Fee Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NFEEACRL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NSPRDADJ', sysdate(), sysdate(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Asset Spread Adjustment', 'Asset Spread Adjustment', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NSPRDADJ' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVLNEXCH', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Loan Exchange', 'Loan Exchange', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVLNEXCH' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVBNDIND', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Bond Indicator', 'Bond Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVBNDIND' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVEQYIND', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Equity Indicator', 'Equity Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVEQYIND' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'RSKIVTYP', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Risk Reporting Investment Type', 'Risk Reporting Investment Type', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'RSKIVTYP' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'RSKASTCL', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Risk Reporting Asset Class', 'Risk Reporting Asset Class', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'RSKASTCL' AND end_tms IS NULL);
	


INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'WSOPRIND', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Principal Only Indicator', 'Principal Only Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'WSOPRIND' AND end_tms IS NULL);
    
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'WSOININD', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Interest Only Indicator', 'Interest Only Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'WSOININD' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CDSCPNME', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'CDS Counterparty Name', 'CDS Counterparty Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CDSCPNME' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'FSTOCOEQ', sysdate(), sysdate(), 'NUVEEN:CSTM', 'CHAR', 'Factset Total common Equity', 'Factset Total common Equity', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'FSTOCOEQ' AND end_tms IS NULL);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	---- inserts from 2022
	
	
	--GM: ISST Domain Inserts


INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBSECTYP', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Raw Sector Type', 'Bloomberg Raw Sector Type', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBSECTYP' AND end_tms IS NULL);

--INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
 -- SELECT 'BBMKSEC', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Market Sector', 'Bloomberg Market Sector', 'ACTIVE', 'NUVEEN'  
  --  FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SCFACT' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EGLMIC', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Eagle SOI MIC', 'Eagle SOI MIC', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EGLMIC' AND end_tms IS NULL);
	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EGLBBEXC', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Eagle BB Exchange', 'Eagle BB Exchange', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EGLBBEXC' AND end_tms IS NULL);
	

--GM:added for BBG custom code changes

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'FUTAGINT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Aggregate Open Interest', 'Aggregate Open Interest', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'FUTAGINT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'FUTAGVOL', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Aggregate Volume of Futures Contracts', 'Aggregate Volume of Futures Contracts', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'FUTAGVOL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SECDT2A7', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'SEC Date (2a-7)', 'SEC Date (2a-7)', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SECDT2A7' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBUNSCID', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'security ID of the underlying stock', 'The Bloomberg security ID of the underlying stock. ', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBUNSCID' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EMTNFLG', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'European Med Term Note Flag', 'European Med Term Note Flag ', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EMTNFLG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'MTNFLG', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Med Term Note Flag', 'Med Term Note Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS  (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'MTNFLG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISSECFLG', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Is Secured Flag', 'Is Secured Flag ', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISSECFLG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISUSCFLG', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Is Unsecured Flag', 'Is Unsecured Flag ', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISUSCFLG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISDBTFLG', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Is Debt Flag', 'Is Debt Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISDBTFLG' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CALDSCRT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Call Discrete Flag', 'Call Discrete Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CALDSCRT' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CALLFLG', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Callable Flag', 'Callable Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CALLFLG' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CVCONVRT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Mandatory Conversion Indicator', 'Mandatory Conversion Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CVCONVRT' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'DMSUKUK', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Domestic Sukuk', 'Domestic Sukuk', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'DMSUKUK' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'INTSUKUK', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'International Sukuk', 'International Sukuk', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'INTSUKUK' AND end_tms IS NULL);		

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISPERPFL', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Is Perpetual Flag', 'Is Perpetual Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISPERPFL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISUNITTD', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Is Unit Traded Flag', 'Is Unit Traded Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISUNITTD' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'PCTSINKR', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Percent Sinker Flag', 'Percent Sinker Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'PCTSINKR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'PRRTSINK', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Pro Rata Sink Indicator', 'Pro Rata Sink Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'PRRTSINK' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'PUTDSCRT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Put Schedule - Discrete', 'Put Schedule - Discrete', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'PUTDSCRT' AND end_tms IS NULL);	

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'TIER1CAP', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Tier 1 Capital Indicator', 'Tier 1 Capital Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'TIER1CAP' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BLLETFLG', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bullet Maturity Type Indicator', 'Bullet Maturity Type Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BLLETFLG' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'OPTCNTSZ', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Options Contract Size', 'Options Contract Size', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'OPTCNTSZ' AND end_tms IS NULL);

	INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'FUTCDSED', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Cheapest to Deliver SEDOL', 'Cheapest to Deliver SEDOL', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'FUTCDSED' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBTKEXCD', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Ticker And Exchange', 'Bloomberg Ticker And Exchange', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBTKEXCD' AND end_tms IS NULL);
	
--GM:added custom for BBG testing gaps -- 10/01
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EQPRSPRX', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Primary Security-Exchange', 'Bloomberg Equity Primary Security-Exchange', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EQPRSPRX' AND end_tms IS NULL);
	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EQPRMTKR', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Primary Security-Ticker', 'Bloomberg Equity Primary Security-Ticker', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EQPRMTKR' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EXCHCODE', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Equity Exchange Code', 'Bloomberg Equity Exchange Code', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EXCHCODE' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBGRNTR', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Guarantor ID', 'Bloomberg Guarantor ID', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBGRNTR' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISSRNME', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Issuer Name', 'Bloomberg Issuer Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISSRNME' AND end_tms IS NULL);		

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EQPRXSHT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Equity Primary Exchange Short', 'Equity Primary Exchange Short', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EQPRXSHT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EQPRXSHT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Equity Primary Exchange Short', 'Equity Primary Exchange Short', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EQPRXSHT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EQSHOACT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Equity Shares Outstanding Actual', 'Equity Shares Outstanding Actual', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EQSHOACT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EQSHORL', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Equity Shares Outstanding Real', 'Equity Shares Outstanding Real', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EQSHORL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EQSHOTMS', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Equity Shares Outstanding Total Mult', 'Equity Shares Outstanding Total Mult', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EQSHOTMS' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBGEN2A7', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Securities & Exchange Rule 2A-7', 'Securities & Exchange Rule 2A-7', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBGEN2A7' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBMTTRTP', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'BB Mortgage Tranche Type', 'BB Mortgage Tranche Type', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBMTTRTP' AND end_tms IS NULL);

--GM:Eagle SOI Statistics	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EGLPRCML', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Eagle Price Multiplier', 'Eagle Price Multiplier', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EGLPRCML' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISISSRY', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Eagle Is Issuer Correct Indicator', 'Eagle Is Issuer Correct Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISISSRY' AND end_tms IS NULL);	


-- GM:for BBCorpGovt custom changes -- 10/08/2022
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SNKFFCT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Sinking Fund Factor', 'Sinking Fund Factor', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SNKFFCT' AND end_tms IS NULL);	

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CVCNVRTO', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Convertible Conversion Ratio', 'Convertible Conversion Ratio', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CVCNVRTO' AND end_tms IS NULL);	


INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'INTACCDT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'DATEONLY', 'Interest Accrual Date', 'Interest Accrual Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'INTACCDT' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BSACTRDT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'DATEONLY', 'Base Accrual Rate Date', 'Base Accrual Rate Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BSACTRDT' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ICINTFRQ', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'ICE Interest Payment Frequency', 'ICE Interest Payment Frequency', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ICINTFRQ' AND end_tms IS NULL);	
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'FSTOTCEQ', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Factset Total Common Equity', 'Factset Total Common Equity', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'FSTOTCEQ' AND end_tms IS NULL);
	
-- GM:added on 11/6 for VOTING RIGHTS DES custom mapping	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBVOTRTD', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Voting Rights Description', 'Bloomberg Voting Rights Description', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBVOTRTD' AND end_tms IS NULL);	
	
-- GM:added on 11/12 for custom field EQY_FUND_CRNCY	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'FNDATCCY', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Fundamental Currency Override', 'Bloomberg Fundamental Currency Override', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'FNDATCCY' AND end_tms IS NULL);	
--GM:added on 11/12 for ICE APEX	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'PREREFTY', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'ICE APEX Pre-Refunded Call Type', 'ICE APEX Pre-Refunded Call Type', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'PREREFTY' AND end_tms IS NULL);		
	
--GM added for IDX RATIO_TO_REPORT	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBIDXRTO', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Index Ratio', 'Bloomberg Index Ratio', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBIDXRTO' AND end_tms IS NULL);		
	
--GM: added for PAYMENT_RANK raw field publish	11-20
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBPAYRNK', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg Payment Rank', 'Bloomberg Payment Rank', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBPAYRNK' AND end_tms IS NULL);		

--Added for capturing original (non-translated) state_of_domicile value from BBG credit risk file
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBSTDOM', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Bloomberg State of Domicile', 'Bloomberg State of Domicile', 'ACTIVE', NULL  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBSTDOM' AND end_tms IS NULL);
--added on 12/17 for NXT CAP DT (BBG field)
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NXTCAPDT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'DATEONLY', 'Brady Next Capitalization Date', 'Brady Next Capitalization Date', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NXTCAPDT' AND end_tms IS NULL);	


INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBISPERP', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Is Perpetual Flag', 'Is Perpetual Flag', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBISPERP' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'BBFUTNME', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Futures Long Name', 'Futures Long Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'BBFUTNME' AND end_tms IS NULL);	


INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'WSOISRPV', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'WSO Issuer Private Indicator', 'WSO Issuer Private Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'WSOISRPV' AND end_tms IS NULL);	
	
	

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CRDNLYST', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Credit Scope Credit Analyst', 'Credit Scope Credit Analyst', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CRDNLYST' AND end_tms IS NULL);	


-- Property Master Merge 24042024

Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREDSPDT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'DATEONLY', 'NRE Property Disposition Date', 'NRE Property Disposition Date','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREDSPDT');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREAQDTE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'DATEONLY', 'NRE Property Acquisition Date', 'NRE Property Acquisition Date','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREAQDTE');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREAUTH', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Authorization ID', 'NRE Property Authorization ID','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREAUTH');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NRECURR', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHAR', 'NRE Property Currency', 'NRE Property Currency','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NRECURR');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREDVLPR', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Developer', 'NRE Property Developer','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREDVLPR');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREJVPRT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Joint Venture Partner', 'NRE Property Joint Venture Partner','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREJVPRT');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NRELNDA', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'AMNT/DEC', 'NRE Property Land Acreage', 'NRE Property Land Acreage','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NRELNDA');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NRERNTAR', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'AMNT/DEC', 'NRE Property Net Rentable Area', 'NRE Property Net Rentable Area','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NRERNTAR');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREFLRS', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'INTEGER', 'NRE Property Number of Floors', 'NRE Property Number of Floors','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREFLRS');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREACMPY', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Accounting Company', 'NRE Property Accounting Company','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREACMPY');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREOCDTE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Cert of Occ Completed Date', 'NRE Property Cert of Occ Completed Date','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREOCDTE');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREMGCMP', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Management Company', 'NRE Property Management Company','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREMGCMP');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NRESLLR', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Seller', 'NRE Property Seller','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NRESLLR');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREBYR', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Property Buyer', 'NRE Property Buyer','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREBYR');
Insert into FT_T_STDF (STAT_DEF_ID, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, STAT_VAL_TYP, STAT_NME, STAT_DESC, DATA_SRC_ID) select 'NREBLDG', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'NRE:CSTM', 'CHARACT', 'NRE Number of Buildings', 'NRE Number of Buildings','NRE' from dual where not exists(select '1' from ft_T_stdf where stat_def_id='NREBLDG');


--Credit Scope


INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVINDNME', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Indenture Name', 'Nuveen Indenture Name', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVINDNME' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVINDNUM', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Indenture Number', 'Nuveen Indenture Number', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVINDNUM' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNDBTST', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Debt Structure', 'Nuveen Debt Structure', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNDBTST' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNMNPCR', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen MNPI Credit', 'Nuveen MNPI Credit', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNMNPCR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNESGEL', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen ESG Ineligible', 'Nuveen ESG Ineligible', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNESGEL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNAGNID', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Agency ID', 'Nuveen Agency ID', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNAGNID' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNPARVL', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'AMNT/DEC', 'Nuveen Par Value', 'Nuveen Par Value', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNPARVL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNISSEN', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Issue Enhancements', 'Nuveen Issue Enhancements', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNISSEN' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNISSCL', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Issue Calls', 'Nuveen Issue Calls', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNISSCL' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNISSPR', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Issue Purpose', 'Nuveen Issue Purpose', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNISSPR' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNISDSC', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Legal Description', 'Nuveen Legal Description', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNISDSC' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNUSPRC', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Use of Proceeds', 'Nuveen Use of Proceeds', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNUSPRC' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNWHOWN', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Wholly Owned', 'Nuveen Wholly Owned', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNWHOWN' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNTXSTT', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Tax Status', 'Nuveen Tax Status', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNTXSTT' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVNESGMD', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen ESG Model', 'Nuveen ESG Model', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVNESGMD' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'NVIVDIND', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Nuveen Invested Indicator', 'Nuveen Invested Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'NVIVDIND' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SMAHLIND', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'SMA Held Indicator', 'SMA Held Indicator', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SMAHLIND' AND end_tms IS NULL);

INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SECUACTV', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Security Active', 'Security Active', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SECUACTV' AND end_tms IS NULL);
	
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'MUNSECTR', SYSDATE(), SYSDATE(), 'NUVEEN:CSTM', 'CHAR', 'Muni Sector', 'Muni Sector', 'ACTIVE', 'NUVEEN'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'MUNSECTR' AND end_tms IS NULL);
