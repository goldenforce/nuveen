create or replace view FT_T_HLD1
as
select instr_id , max(heldindicator) as HELDINDICATOR ,max(investableindicator)as INVESTABLEINDICATOR from (
select held.instr_id ,'Y' as HeldIndicator ,'N' as InvestableIndicator from ft_t_isgr isgr , fT_t_isgp held 
where 1=1
and isgr.iss_grp_oid =held.prnt_iss_grp_oid and isgr.iss_grp_id like 'LEVFINHELD%'
and held.end_tms is null
union
select  invest.instr_id ,'N' , 'Y'  from ft_t_isgr isgr , ft_T_isgp invest
where 1=1
and isgr.iss_grp_oid =invest.prnt_iss_grp_oid and isgr.iss_grp_id like 'LEVFININVEST%'
and invest.end_tms is null
) tbl
group by instr_id;