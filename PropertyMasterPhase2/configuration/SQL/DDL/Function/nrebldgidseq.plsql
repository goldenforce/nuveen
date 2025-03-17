create or replace
function nrebldgidseq() returns varchar as $$
select
	to_char(nextval('nresequence'),
	'"B"fm000000000')
from
	dual;
$$ language sql;