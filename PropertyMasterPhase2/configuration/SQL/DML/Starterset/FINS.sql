
INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'JP Morgan Chase','JP Morgan Chase',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'JP Morgan Chase' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'RBC Capital Markets','RBC Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'RBC Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Fidelity Capital Markets','Fidelity Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Fidelity Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Raymond James & Assoc','Raymond James & Assoc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Raymond James & Assoc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Jefferies & Co','Jefferies & Co',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Jefferies & Co' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Wells Fargo Securities','Wells Fargo Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Wells Fargo Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Wells Fargo Brokerage Services LLC','Wells Fargo Brokerage Services LLC',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Wells Fargo Brokerage Services LLC' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'BofA Securities','BofA Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'BofA Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Barclays Capital','Barclays Capital',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Barclays Capital' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Simon, William E. & Sons','Simon, William E. & Sons',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Simon, William E. & Sons' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Siebert Bradford Shank','Siebert Bradford Shank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Siebert Bradford Shank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Keybanc','Keybanc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Keybanc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Morgan Stanley','Morgan Stanley',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Morgan Stanley' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'BancAmerica','BancAmerica',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'BancAmerica' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Bank of America','Bank of America',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Bank of America' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Ramirez & Co, Samuel','Ramirez & Co, Samuel',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Ramirez & Co, Samuel' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Ramirez & Co','Ramirez & Co',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Ramirez & Co' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Citi Group Global Markets','Citi Group Global Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Citi Group Global Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Janney Montgomery Scott','Janney Montgomery Scott',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Janney Montgomery Scott' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Stifel Nicolaus','Stifel Nicolaus',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Stifel Nicolaus' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Baird, Robert W.','Baird, Robert W.',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Baird, Robert W.' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Piper Sandler','Piper Sandler',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Piper Sandler' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Deutsche Bank','Deutsche Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Deutsche Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'TD Securties','TD Securties',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'TD Securties' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Barclays Bank PLC','Barclays Bank PLC',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Barclays Bank PLC' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'PNC Securities','PNC Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'PNC Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'HilltopSecurities','HilltopSecurities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'HilltopSecurities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Banc of America Merrill','Banc of America Merrill',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Banc of America Merrill' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Oppenheimer & Company','Oppenheimer & Company',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Oppenheimer & Company' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Roosevelt & Cross Inc','Roosevelt & Cross Inc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Roosevelt & Cross Inc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Loop Capital Markets','Loop Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Loop Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Goldman, Sachs & Co.','Goldman, Sachs & Co.',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Goldman, Sachs & Co.' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'BA Securities','BA Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'BA Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Truist Securities Inc','Truist Securities Inc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Truist Securities Inc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Mesirow','Mesirow',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Mesirow' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Huntington Co','Huntington Co',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Huntington Co' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Merrill Lynch','Merrill Lynch',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Merrill Lynch' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'UBS Financial','UBS Financial',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'UBS Financial' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Frazier Lanier','Frazier Lanier',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Frazier Lanier' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Fifth Third Securities','Fifth Third Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Fifth Third Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Key Capital Markets','Key Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Key Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'BNY Mellon Capital Markets','BNY Mellon Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'BNY Mellon Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Boenning & Scattergood','Boenning & Scattergood',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Boenning & Scattergood' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'KeyBank','KeyBank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'KeyBank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Unknown','Unknown',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Unknown' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Estrada Hinojosa','Estrada Hinojosa',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Estrada Hinojosa' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'D.A. Davidson','D.A. Davidson',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'D.A. Davidson' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Piper Jaffray','Piper Jaffray',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Piper Jaffray' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Stern Brothers','Stern Brothers',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Stern Brothers' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Davenport & Co','Davenport & Co',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Davenport & Co' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'NW Capital Markets Inc','NW Capital Markets Inc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'NW Capital Markets Inc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'First Fidelity Bank','First Fidelity Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'First Fidelity Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Stephens Inc','Stephens Inc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Stephens Inc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Cabrera Capital Markets','Cabrera Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Cabrera Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Frost Bank','Frost Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Frost Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Hart, L.J. & Co','Hart, L.J. & Co',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Hart, L.J. & Co' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'The Baker Group','The Baker Group',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'The Baker Group' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'UMB Bank N.A.','UMB Bank N.A.',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'UMB Bank N.A.' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Colliers Securities','Colliers Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Colliers Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'US Bancorp Piper Jaffray','US Bancorp Piper Jaffray',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'US Bancorp Piper Jaffray' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'R. W. Baird','R. W. Baird',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'R. W. Baird' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Wiley Bros inc','Wiley Bros inc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Wiley Bros inc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Northland Securities','Northland Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Northland Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Fahnestock & Co','Fahnestock & Co',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Fahnestock & Co' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Ziegler Securities','Ziegler Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Ziegler Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Crews & Associates','Crews & Associates',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Crews & Associates' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'PMA Securities','PMA Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'PMA Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Cain Bros','Cain Bros',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Cain Bros' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Rossevelt & Cross','Rossevelt & Cross',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Rossevelt & Cross' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Oppenheim, Leo','Oppenheim, Leo',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Oppenheim, Leo' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'MBS Capital Markets','MBS Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'MBS Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'B.C. Zeigler and Company','B.C. Zeigler and Company',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'B.C. Zeigler and Company' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Ziegler Capital Markets','Ziegler Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Ziegler Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Herbert J Sims','Herbert J Sims',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Herbert J Sims' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Samco Capital Markets','Samco Capital Markets',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Samco Capital Markets' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Bernardi Securities','Bernardi Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Bernardi Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Municipal Capital Markets Grp','Municipal Capital Markets Grp',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Municipal Capital Markets Grp' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Hilliard Lyons','Hilliard Lyons',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Hilliard Lyons' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Jolley, Joe','Jolley, Joe',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Jolley, Joe' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'FMS Securities Inc','FMS Securities Inc',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'FMS Securities Inc' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Sims & Co., Herbert J.','Sims & Co., Herbert J.',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Sims & Co., Herbert J.' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Private Placement','Private Placement',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Private Placement' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Dougherty & Company LLC','Dougherty & Company LLC',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Dougherty & Company LLC' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Southwest Securities','Southwest Securities',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Southwest Securities' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Stone & Youngberg','Stone & Youngberg',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Stone & Youngberg' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Westhoff, Cone & Holmstedt','Westhoff, Cone & Holmstedt',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Westhoff, Cone & Holmstedt' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Cumberland','Cumberland',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Cumberland' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'U.S. Bank National Association','U.S. Bank National Association',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'U.S. Bank National Association' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'US Bank','US Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'US Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Bank of New York Mellon','Bank of New York Mellon',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Bank of New York Mellon' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Wilmington Trust Company','Wilmington Trust Company',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Wilmington Trust Company' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'UMB Bank','UMB Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'UMB Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Wachovia Bank','Wachovia Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Wachovia Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Regions Bank','Regions Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Regions Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Bank of Guam','Bank of Guam',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Bank of Guam' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Computershare Trust Company, NA','Computershare Trust Company, NA',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Computershare Trust Company, NA' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Manufacturers & Traders Trust Company','Manufacturers & Traders Trust Company',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Manufacturers & Traders Trust Company' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'BancFirst','BancFirst',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'BancFirst' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Wells Fargo','Wells Fargo',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Wells Fargo' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'TD Bank','TD Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'TD Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'U.S. Bank','U.S. Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'U.S. Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'BOKF, N.A.','BOKF, N.A.',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'BOKF, N.A.' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Hancock Whitney Bank','Hancock Whitney Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Hancock Whitney Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Bank of New York','Bank of New York',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Bank of New York' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'US Trust','US Trust',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'US Trust' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Huntington National Bank','Huntington National Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Huntington National Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Synovus Bank','Synovus Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Synovus Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'U.S. National Bank, N.A.','U.S. National Bank, N.A.',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'U.S. National Bank, N.A.' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'MUFG Union Bank','MUFG Union Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'MUFG Union Bank' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'ZIONBCOR','ZIONBCOR',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'ZIONBCOR' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Bank of Oklahoma','Bank of Oklahoma',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Bank of Oklahoma' );

INSERT INTO ft_t_fins (inst_mnem, inst_nme, inst_desc, start_tms, last_chg_tms, last_chg_usr_id)  
  SELECT new_oid(),'Zions First National Bank','Zions First National Bank',SYSDATE(),SYSDATE(),'NUVEEN:CSTM' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_fins WHERE inst_nme = 'Zions First National Bank' );
