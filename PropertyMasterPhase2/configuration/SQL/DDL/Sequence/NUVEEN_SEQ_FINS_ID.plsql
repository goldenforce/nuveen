--{$$-STATEMENT-$$}

do $$ 
begin
-- Check if the sequence exists in the public schema
    if not exists (
SELECT 1 FROM   information_schema.sequences
    WHERE UPPER(sequence_name) = 'NUVEEN_SEQ_FINS_ID'
    ) then
-- Create the sequence if it doesn't exist
        create sequence nuveen_seq_fins_id
    start 1000000001
    increment 1
    minvalue 1
    maxvalue 9999999999
    cache 1
    no cycle;
else
raise notice 'sequence nuveen_seq_fins_id already exists';
end if;
end $$;
/
