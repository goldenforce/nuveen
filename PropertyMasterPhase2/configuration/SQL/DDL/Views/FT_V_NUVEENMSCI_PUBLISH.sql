drop view if exists ft_v_nuveenmsci_publish;

create or replace view ft_v_nuveenmsci_publish
as
select 'issuer_name,issuerid,issuer_cusip,issuer_sedol,issuer_isin,id_bb_company' as dataview ,0 as rec_order
from dual 
union
select msci_issr_nme ||','|| 
msci_issr_id ||','|| 
cusip ||','|| 
sedol ||','|| 
isin ||','|| 
id_bb_company , 1 
from ft_t_msc1 
where id_bb_company is not null 
order by 2;
