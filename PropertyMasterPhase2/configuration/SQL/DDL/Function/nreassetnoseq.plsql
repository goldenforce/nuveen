create or replace
function nreassetnoseq(in propType char) returns varchar as $$
select
	to_char(nextval('nresequence'),
	propType || 'fm000000000')
from
	dual;
$$ language sql;