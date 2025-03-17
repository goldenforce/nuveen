INSERT INTO FT_O_UIBL
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
SELECT 'Legacy BICS Level I', 'BICS Level 1 Sector Name', 'en', 'Bonds.InstrumentClassification.BICSLevelI', 'BICS Level 1 Sector Name', 'user1', NULL, NULL 
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_O_UIBL WHERE BUSINESS_LABEL_TXT = 'Legacy BICS Level I' AND BUSINESS_LABEL_NME = 'BICS Level 1 Sector Name'
    AND SCREEN_ATTR_PATH_DESC = 'Bonds.InstrumentClassification.BICSLevelI');

INSERT INTO FT_O_UIBL
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
SELECT 'Legacy BICS Level II', 'BICS Level 2 Industry Group Name', 'en', 'Bonds.InstrumentClassification.BICSLevelII', 'BICS Level 2 Industry Group Name', 'user1', NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_O_UIBL WHERE BUSINESS_LABEL_TXT = 'Legacy BICS Level II' AND BUSINESS_LABEL_NME = 'BICS Level 2 Industry Group Name'
    AND SCREEN_ATTR_PATH_DESC = 'Bonds.InstrumentClassification.BICSLevelII');
    

INSERT INTO FT_O_UIBL
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
SELECT 'Legacy BICS Level III', 'BICS Level 3 Industry Name', 'en', 'Bonds.InstrumentClassification.BICSLevelIII', 'BICS Level 3 Industry Name', 'user1', NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_O_UIBL WHERE BUSINESS_LABEL_TXT = 'Legacy BICS Level III' AND BUSINESS_LABEL_NME = 'BICS Level 3 Industry Name'
    AND SCREEN_ATTR_PATH_DESC = 'Bonds.InstrumentClassification.BICSLevelIII');
    

INSERT INTO FT_O_UIBL
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
SELECT 'Current Loans Outstanding', 'Current Loan Outstanding Amount', 'en', 'Bonds.MortgageStatistics.CurrentLoansOutstanding', 'Current Loan Outstanding Amount', 'user1', NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_O_UIBL WHERE BUSINESS_LABEL_TXT = 'Current Loans Outstanding' AND BUSINESS_LABEL_NME = 'Current Loan Outstanding Amount'
    AND SCREEN_ATTR_PATH_DESC = 'Bonds.MortgageStatistics.CurrentLoansOutstanding');
    
INSERT INTO FT_O_UIBL
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
SELECT 'Current Prin Limit Amount', 'Current Principal Limit Amount', 'en', 'Bonds.MortgageStatistics.CurrentPrinLimitAmount', 'Current Principal Limit Amount', 'user1', NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM FT_O_UIBL WHERE BUSINESS_LABEL_TXT = 'Current Prin Limit Amount' AND BUSINESS_LABEL_NME = 'Current Principal Limit Amount'
    AND SCREEN_ATTR_PATH_DESC = 'Bonds.MortgageStatistics.CurrentPrinLimitAmount');
    


-- BB Fields feedback by Peter 02Nov

INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Current Interest Rate Margin', 'Current Coupon Spread (BP)', 'en', 'Bonds.BondStatistics.BondStatsCurrentInterestRateMargin', '', 'user1', NULL, NULL
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.BondStatistics.BondStatsCurrentInterestRateMargin' );
INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Current Loans Outstanding', 'Current Loan Outstanding Amount', 'en', 'Bonds.MortgageStatistics.CurrentLoansOutstanding', 'Current Loan Outstanding Amount', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.MortgageStatistics.CurrentLoansOutstanding' );
INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Current Prin Limit Amount', 'Current Principal Limit Amount', 'en', 'Bonds.MortgageStatistics.CurrentPrinLimitAmount', 'Current Principal Limit Amount', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.MortgageStatistics.CurrentPrinLimitAmount' );
INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Junior Indicator', 'Junior Debt Indicator', 'en', 'Bonds.BondFeatures.JuniorIndicator', '', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.BondFeatures.JuniorIndicator' );
INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Loan Status Text', 'Loan Status', 'en', 'Bonds.MortgageStatistics.LoanStatusText', '', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.MortgageStatistics.LoanStatusText' );
INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Nuveen Private Placement', 'Private Placement', 'en', 'Bonds.NuveenDerivedFields.NuveenPrivatePlacement', 'Private Placement', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.NuveenDerivedFields.NuveenPrivatePlacement' );



INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Settlement Currency', 'Settlement Currency', 'en', 'Bonds.InstrumentDetails.PrincipalCurrency', '', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.InstrumentDetails.PrincipalCurrency' );

INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Bank Deal Currency', 'Bank Deal Currency', 'en', 'Bonds.InstrumentDetails.DistributionCurrency', '', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.InstrumentDetails.DistributionCurrency' );

INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Taxation Jurisdiction Country', 'Taxation Jurisdiction Country', 'en', 'Bonds.InstrumentGeographicalInformation.TaxationJurisdiction', '', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.InstrumentGeographicalInformation.TaxationJurisdiction' );


INSERT INTO ft_o_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Loan Statistics', 'Loan Statistics', 'en', 'Bonds.MortgageStatistics', '', 'user1', NULL, NULL 
from dual where not exists (select 'x' from ft_o_uibl where screen_attr_path_desc = 'Bonds.MortgageStatistics' );

--Property Master Merge 24042024
Insert into ft_o_uibl (business_label_txt,business_label_nme,cntry_cde,screen_attr_path_desc,business_label_desc, created_usr_id, prod_nme, created_tms)  select 'Occupancy Type','Property Sub Type','en','Property.PropertyDetails.OccupancyType',NULL,'NRE:CSTM','',CURRENT_TIMESTAMP from dual where not exists (select 1 from ft_o_uibl where business_label_txt = 'Occupancy Type' and business_label_nme = 'Property Sub Type');
insert into ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms) select 'Number of Bedrooms' as business_label_txt, 'Number of Beds' as business_label_nme, 'en' as cntry_cde, 'Property.PropertyDetails.NumberofBedrooms' as screen_attr_path_desc, NULL as business_label_desc, 'user1' as created_usr_id, NULL as prod_nme, SYSDATE() as created_tms on conflict (business_label_txt, cntry_cde, screen_attr_path_desc) where (business_label_txt = 'Number of Bedrooms' and cntry_cde = 'en' and screen_attr_path_desc = 'Property.PropertyDetails.NumberofBedrooms') do update set business_label_txt=EXCLUDED.business_label_txt, business_label_nme=EXCLUDED.business_label_nme, cntry_cde=EXCLUDED.cntry_cde, screen_attr_path_desc=EXCLUDED.screen_attr_path_desc, business_label_desc=EXCLUDED.business_label_desc, created_usr_id=EXCLUDED.created_usr_id, prod_nme=EXCLUDED.prod_nme, created_tms=EXCLUDED.created_tms;
insert into ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms) select 'Real Estate Owned Indicator' as business_label_txt, 'Is NRE Instance of Yardi' as business_label_nme, 'en' as cntry_cde, 'Property.PropertyDetails.RealEstateOwnedIndicator' as screen_attr_path_desc, NULL as business_label_desc, 'user1' as created_usr_id, NULL as prod_nme, SYSDATE() as created_tms on conflict (business_label_txt, cntry_cde, screen_attr_path_desc) where (business_label_txt = 'Real Estate Owned Indicator' and cntry_cde = 'en' and screen_attr_path_desc = 'Property.PropertyDetails.RealEstateOwnedIndicator') do update set business_label_txt=EXCLUDED.business_label_txt, business_label_nme=EXCLUDED.business_label_nme, cntry_cde=EXCLUDED.cntry_cde, screen_attr_path_desc=EXCLUDED.screen_attr_path_desc, business_label_desc=EXCLUDED.business_label_desc, created_usr_id=EXCLUDED.created_usr_id, prod_nme=EXCLUDED.prod_nme, created_tms=EXCLUDED.created_tms;

--Credit Scope


INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Institution Name','Credit Name','en','NuveenCredit.FinancialInstitutionDetails.FinancialInstitutionName','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.FinancialInstitutionDetails.FinancialInstitutionName' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Institution Description','Credit Description','en','NuveenCredit.FinancialInstitutionDetails.InstitutionDescription','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.FinancialInstitutionDetails.InstitutionDescription' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Instrument Name','Issue Name','en','NuveenCredit.NuveenLUnderlyingIssues.NuveenLinkedIssue.FullInstrument.InstrumentDetails.PreferredInstrumentName','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenLUnderlyingIssues.NuveenLinkedIssue.FullInstrument.InstrumentDetails.PreferredInstrumentName' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'All Institution Relations','Credit Relations','en','NuveenCredit.AllInstitutionRelations','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.AllInstitutionRelations' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Related Employees','Linked Employees','en','NuveenCredit.NuveenRelatedEmployees','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenRelatedEmployees' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Instrument Name','Issue Name','en','NuveenCreditIssue.InstrumentDetails.PreferredInstrumentName','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCreditIssue.InstrumentDetails.PreferredInstrumentName' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Instrument Description','Issue Description','en','NuveenCreditIssue.InstrumentDetails.PreferredInstrumentDescription','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCreditIssue.InstrumentDetails.PreferredInstrumentDescription' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Instrument System Status','Issue Status','en','NuveenCreditIssue.InstrumentDetails.InstrumentSystemStatus','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCreditIssue.InstrumentDetails.InstrumentSystemStatus' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Party Roles','Issue Relations','en','NuveenCreditIssue.InstitutionRoles','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCreditIssue.InstitutionRoles' );

--INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  --SELECT 'Institution Name','Instituion Name','en','NuveenCreditIssue.InstitutionRoles.RelatedInstitution.FinancialInstitution.FinancialInstitutionDetails.FinancialInstitutionName','NUVEEN:CSTM'
    --FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCreditIssue.InstitutionRoles.RelatedInstitution.FinancialInstitution.FinancialInstitutionDetails.FinancialInstitutionName' );

--INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  --SELECT 'Institution Description','Institution Description','en','NuveenCreditIssue.InstitutionRoles.RelatedInstitution.FinancialInstitution.FinancialInstitutionDetails.InstitutionDescription','NUVEEN:CSTM'
    --FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCreditIssue.InstitutionRoles.RelatedInstitution.FinancialInstitution.FinancialInstitutionDetails.InstitutionDescription' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Employee Name','Author','en','NuveenCredit.NuveenCreditReports.NuveenCRAuthor.Employee.EmployeeDetail.EMPLEmployeeName','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenCreditReports.NuveenCRAuthor.Employee.EmployeeDetail.EMPLEmployeeName' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Employee Number','Author ID','en','NuveenCredit.NuveenCreditReports.NuveenCRAuthor.Employee.EmployeeDetail.EMIDEMPLEmployeeNum','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenCreditReports.NuveenCRAuthor.Employee.EmployeeDetail.EMIDEMPLEmployeeNum' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Employee Name','Responsible Analyst','en','NuveenCredit.NuveenCreditReports.NuveenCRResponsibleAnalyst.Employee.EmployeeDetail.EMPLEmployeeName','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenCreditReports.NuveenCRResponsibleAnalyst.Employee.EmployeeDetail.EMPLEmployeeName' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Employee Number','Responsible Analyst ID','en','NuveenCredit.NuveenCreditReports.NuveenCRResponsibleAnalyst.Employee.EmployeeDetail.EMIDEMPLEmployeeNum','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenCreditReports.NuveenCRResponsibleAnalyst.Employee.EmployeeDetail.EMIDEMPLEmployeeNum' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Employee Name','Review Analyst','en','NuveenCredit.NuveenCreditReports.NuveenCRReviewAnalyst.Employee.EmployeeDetail.EMPLEmployeeName','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenCreditReports.NuveenCRReviewAnalyst.Employee.EmployeeDetail.EMPLEmployeeName' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Employee Number','Review Analyst ID','en','NuveenCredit.NuveenCreditReports.NuveenCRReviewAnalyst.Employee.EmployeeDetail.EMIDEMPLEmployeeNum','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenCreditReports.NuveenCRReviewAnalyst.Employee.EmployeeDetail.EMIDEMPLEmployeeNum' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Institution Details','Credit Details','en','NuveenCredit.FinancialInstitutionDetails','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.FinancialInstitutionDetails' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Comments','WL Reason','en','NuveenCredit.RatingsOpinion.WatchOpinion.WatchComments','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.RatingsOpinion.WatchOpinion.WatchComments' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Direction','WL Distressed Credit','en','NuveenCredit.RatingsOpinion.WatchOpinion.WatchDirection','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.RatingsOpinion.WatchOpinion.WatchDirection' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Effective Date','WL Effective Date','en','NuveenCredit.RatingsOpinion.WatchOpinion.WatchEffectiveDate','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.RatingsOpinion.WatchOpinion.WatchEffectiveDate' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Effective End Date','WL Effective End Date','en','NuveenCredit.RatingsOpinion.WatchOpinion.WatchEffectiveEndDate','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.RatingsOpinion.WatchOpinion.WatchEffectiveEndDate' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'GNIS County Code','GNIS County','en','NuveenCredit.NuveenESGDetails.NuveenGNISCountyCode','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenESGDetails.NuveenGNISCountyCode' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'GNIS Feature ID','GNIS Feature Name','en','NuveenCredit.NuveenESGDetails.NuveenGNISFeatureCode','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenESGDetails.NuveenGNISFeatureCode' );

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'GNIS State Code','GNIS State Name','en','NuveenCredit.NuveenESGDetails.NuveenGNISStateCode','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.NuveenESGDetails.NuveenGNISStateCode' );

insert into ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms) select 'Security Active' as business_label_txt, 'Nuveen Security Active Flag' as business_label_nme, 'en' as cntry_cde, 'MunicipalBond.NuveenStatistics.NuveenSecurityActive' as screen_attr_path_desc, null as business_label_desc, 'NUVEEN:CSTM' as created_usr_id, null as prod_nme, sysdate() as created_tms on conflict (business_label_txt, cntry_cde, screen_attr_path_desc) where (business_label_txt = 'Security Active' and cntry_cde = 'en' and screen_attr_path_desc = 'MunicipalBond.NuveenStatistics.NuveenSecurityActive') do update set business_label_txt = EXCLUDED.business_label_txt, business_label_nme = EXCLUDED.business_label_nme, cntry_cde = EXCLUDED.cntry_cde, screen_attr_path_desc = EXCLUDED.screen_attr_path_desc, business_label_desc = EXCLUDED.business_label_desc, created_usr_id = EXCLUDED.created_usr_id, prod_nme = EXCLUDED.prod_nme, created_tms = EXCLUDED.created_tms;