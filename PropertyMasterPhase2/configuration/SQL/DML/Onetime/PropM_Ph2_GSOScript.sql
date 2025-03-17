delete  FROM FT_BE_BCFP WHERE DGDP_OID = '009HemDC2etbS00G';
delete  FROM FT_BE_BNKP WHERE DGDP_OID = '009HemDC2etbS00G';
delete  FROM FT_BE_BECP WHERE DGDP_OID = '009HemDC2etbS00G';
delete  FROM FT_BE_DGSC WHERE DGDP_OID = '009HemDC2etbS00G';
delete  FROM FT_BE_DGDP WHERE DGDP_OID = '009HemDC2etbS00G';

delete from ft_t_DMPT where bfdf_oid ='009tcVSi2etbS004' and dmpt_oid ='009tcVSi2etbS006' AND EXISTS (SELECT 1 FROM ft_t_DMPT where bfdf_oid ='009tcVSi2etbS004' and dmpt_oid ='009tcVSi2etbS006');