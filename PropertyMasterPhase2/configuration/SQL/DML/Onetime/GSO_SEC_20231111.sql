delete from ft_be_berm where berc_oid in (select berc_oid from ft_be_berc where berc_oid = '++9Ic9Hy2etbS22A' and rule_nme = 'Base.MaturityDateGreaterThanIssueDate');
delete from ft_be_berc where berc_oid = '++9Ic9Hy2etbS22A' and rule_nme = 'Base.MaturityDateGreaterThanIssueDate';

delete from ft_be_berm where berc_oid in (select berc_oid from ft_T_berc where berc_oid = '++9L4HIy2etbS00-' and rule_nme ='Nuveen.DefaultDenomCurWithDistributionCur');
delete from ft_T_berc where berc_oid = '++9L4HIy2etbS00-' and rule_nme ='Nuveen.DefaultDenomCurWithDistributionCur';


update ft_be_berc set config_disabled_ind = 'Y' where berc_oid ='++8WQWdS2es3800d' and rule_nme  = 'FixedIncome.IssueDateLessMaturityDateCheck';