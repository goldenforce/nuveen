create or replace
function DropOldRRC1BackupTables(days INT)
returns VOID as $$
declare
    table_name text;

sql_query text;

begin
    for table_name in
        select
	t.table_name
from
	information_schema.tables t
join pg_stat_user_tables s on
	s.relname = t.table_name
where
	t.table_name like '%RRC1_backup%'
	and s.last_vacuum is not null
	and (CURRENT_DATE - s.last_vacuum::DATE) > days  
    loop
   
        sql_query := 'DROP TABLE IF EXISTS ' || quote_ident(table_name);

execute sql_query;

raise notice 'Dropping table: %',
table_name;
end loop;
end;

$$ language plpgsql;