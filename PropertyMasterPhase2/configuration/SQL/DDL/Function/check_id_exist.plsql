create or replace function check_id_exist(input_string text, delimit_string text, identifiertype text, tableid text) returns int as $$

declare
id_array text[];
id_value_iter text;
id_present int;

begin

-- Split the input string by commas and store in an array
id_array := string_to_array(input_string, delimit_string);

-- Iterate over each ID value
    foreach id_value_iter in array id_array
    	loop
		    -- Check if the ID value exists
			execute format('select 1 from ft_t_%I id where id.%I = $1 and id.%I = $2 and id.start_tms <= sysdate() and (id.end_tms is null or id.end_tms > sysdate())', tableid, case tableid when 'isid' then 'iss_id' when 'irid' then 'issr_id' when 'fiid' then 'fins_id' end, case tableid when 'isid' then 'id_ctxt_typ' when 'irid' then 'issr_id_ctxt_typ' when 'fiid' then 'fins_id_ctxt_typ' end)
			into id_present
			using id_value_iter, identifierType;

		    -- Exit loop if the ID value exists
			exit when not null id_present;

		end loop;

	-- Return the ID value
    return id_present;
end;

$$ language plpgsql;