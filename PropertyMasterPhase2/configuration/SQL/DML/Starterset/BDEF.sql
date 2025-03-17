update ft_be_bdef set cache_disabled_ind = 'Y';
update ft_be_bdef set  cache_disabled_ind  = 'N'
where betd_oid in (select betd_oid from ft_T_betd where bus_entity_typ_nme  in ('GSOMessageHeader','FinancialInstitution','FinancialMarket','GeographicalUnit',
'IndustryClassification','Instrument','InstrumentGroup','InstrumentIdentifiers','Issuer','PublishingProfile','LockedFieldSummary','Property',
'PropertyType','ExceptionDetails'));