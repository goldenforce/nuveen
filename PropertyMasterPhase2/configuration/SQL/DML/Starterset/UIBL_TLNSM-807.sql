delete from ft_o_uibl where business_label_txt='Institution Description' and screen_attr_path_desc='NuveenCredit.FinancialInstitutionDetails.InstitutionDescription' and cntry_cde='en'; 

INSERT INTO ft_o_uibl (business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, created_usr_id)  
  SELECT 'Long Description','Credit Description','en','NuveenCredit.FinancialInstitutionDetails.NuveenLongDescription','NUVEEN:CSTM'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_uibl WHERE screen_attr_path_desc = 'NuveenCredit.FinancialInstitutionDetails.NuveenLongDescription' );
    