--{$$-STATEMENT-$$}
do $$
declare
l_tbl_name_bkp varchar(1000) := 'nsm_dup_mdy_isrt_backup_'||to_char(SYSDATE(),'YYYYMMDDHH24MISS');
l_tbl_name_bkp_exists_flag varchar(1000) := null ;
begin

execute format('CREATE TABLE IF NOT EXISTS %I AS
					(
					with isrt_dup as (
						select
							ir.instr_id
						from
							ft_t_isrt ir
						join ft_t_rtng rt on
							ir.rtng_set_oid = rt.rtng_set_oid
						where
							rt.rtng_set_mnem = ''534N''
							and ir.sys_eff_end_tms is null
						group by
							ir.instr_id
						having
							count(1)>1),
						isrt_all as (
						select
							isrt.instr_id,
							isrt.iss_rtng_oid
						from
							ft_t_isrt isrt
						join ft_t_rtng rt on
							isrt.rtng_set_oid = rt.rtng_set_oid
						where
							rt.rtng_set_mnem = ''534N''
							and isrt.sys_eff_end_tms is null)
						select del.*
						from
							ft_t_isrt del
						join
							isrt_all ai on
							del.iss_rtng_oid = ai.iss_rtng_oid
						join
							isrt_dup di on
							ai.instr_id = di.instr_id
					)
	', l_tbl_name_bkp);
	
	select 1 into l_tbl_name_bkp_exists_flag from information_schema.tables where table_name  = l_tbl_name_bkp and table_schema = '#DBOWNER#';

	if(l_tbl_name_bkp_exists_flag is not null) then
		raise notice 'Created backup table %', l_tbl_name_bkp;
		execute format('with isrt_dup as (
					select
						ir.instr_id
					from
						ft_t_isrt ir
					join ft_t_rtng rt on
						ir.rtng_set_oid = rt.rtng_set_oid
					where
						rt.rtng_set_mnem = ''534N''
						and ir.sys_eff_end_tms is null
					group by
						ir.instr_id
					having
						count(1)>1),
					isrt_all as (
					select
						isrt.instr_id,
						isrt.iss_rtng_oid
					from
						ft_t_isrt isrt
					join ft_t_rtng rt on
						isrt.rtng_set_oid = rt.rtng_set_oid
					where
						rt.rtng_set_mnem = ''534N''
						and isrt.sys_eff_end_tms is null)
					delete
					from
						ft_t_isrt del
							using isrt_all ai
					join isrt_dup di on
						ai.instr_id = di.instr_id
					where
						del.iss_rtng_oid = ai.iss_rtng_oid
		');
		raise notice 'Duplicates cleanup script executed';
	else
		raise notice 'Backup table % not created', l_tbl_name_bkp;
	end if;
end $$;
/
