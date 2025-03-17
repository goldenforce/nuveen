-- select * from ft_v_bb_persec_loans

create or replace view ft_v_bb_persec_loans
as
select
	data1.instr_id,
	data1.bb_mkt_sec,
	data1.bb_sec_typ,
	data1.identifier,
	data1.idcontext,
	data1.bb_cmpy_id,
	data1.iss_typ,
	data1.iss_grp_oid
from
	(
	select
		isgp.instr_id,
		(
		select
			iscl.cl_value
		from
			ft_t_iscl iscl
		where
			iscl.instr_id::text = isgp.instr_id::text
			and iscl.indus_cl_set_id::text = 'BBMKTSCT'::text
		limit 1) as bb_mkt_sec,
		(
		select
			isst.stat_char_val_txt
		from
			ft_t_isst isst
		where
			isst.instr_id::text = isgp.instr_id::text
			and isst.stat_def_id::text = 'BBSECTYP'::text
		limit 1) as bb_sec_typ,
		case
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBUNIQUE'::text
			limit 1)) is not null then (
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBUNIQUE'::text
			limit 1)
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBGLOBAL'::text
			limit 1)) is not null then (
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBGLOBAL'::text
			limit 1)
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBUNIQUE'::text
			limit 1)) is not null then (
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBUNIQUE'::text
			limit 1)
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'ISIN'::text
			limit 1)) is not null then (
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'ISIN'::text
			limit 1)
			else null::character varying
		end as identifier,
		case
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBUNIQUE'::text
			limit 1)) is not null then 'BB_UNIQUE'::text
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBGLOBAL'::text
			limit 1)) is not null then 'BB_GLOBAL'::text
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'BBUNIQUE'::text
			limit 1)) is not null then 'BBUNIQUE'::text
			when ((
			select
				isid.iss_id
			from
				ft_t_isid isid
			where
				isid.instr_id::text = isgp.instr_id::text
				and isid.id_ctxt_typ::text = 'ISIN'::text
			limit 1)) is not null then 'ISIN'::text
			else null::text
		end as idcontext,
		(
		select
			irid.issr_id
		from
			ft_t_irid irid,
			ft_t_issu issu
		where
			irid.instr_issr_id::text = issu.instr_issr_id::text
			and irid.issr_id_ctxt_typ::text = 'BBCMPYID'::text
			and irid.end_tms is null
			and issu.instr_id::text = isgp.instr_id::text
		limit 1) as bb_cmpy_id,
		(select iss_typ from ft_T_issu issu where issu.instr_id = isgp.instr_id) as iss_typ,
		isgr.iss_grp_oid  as iss_grp_oid
	from
		ft_t_isgr isgr
	left join ft_t_isgp isgp on
		isgr.iss_grp_oid::text = isgp.prnt_iss_grp_oid::text
		and isgr.grp_purp_typ::text = 'UNIVERSE'::text
		--and isgr.grp_nme::text = 'Loans - Held'::text
		and isgr.iss_grp_id like 'LEVFINHELD%'
		and isgp.end_tms is null
		or isgp.end_tms > SYSDATE()
		and isgr.end_tms is null
		or isgr.end_tms > SYSDATE()) data1
where
	data1.INSTR_ID is not null and data1.identifier is not null; 