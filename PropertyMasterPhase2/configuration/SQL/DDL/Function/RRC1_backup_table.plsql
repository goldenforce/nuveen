CREATE OR REPLACE FUNCTION RRC1_backup_table()
RETURNS void AS
$$
DECLARE
    table_exists BOOLEAN;
    backup_table_name text;
    current_date_str text;
BEGIN
    current_date_str := to_char(current_date, 'YYYY_MM_DD');
    backup_table_name := 'FT_T_RRC1_backup_' || current_date_str;
    SELECT EXISTS (SELECT 1 FROM information_schema.tables 
                   WHERE lower(table_name) = lower(backup_table_name))
    INTO table_exists;
    IF table_exists THEN
        EXECUTE 'DROP TABLE IF EXISTS ' || backup_table_name;
    END IF;
    EXECUTE 'CREATE TABLE ' || backup_table_name || ' AS TABLE FT_T_RRC1';
    RAISE NOTICE 'Table "FT_T_RRC1" backed up successfully as "%".', backup_table_name;
END;
$$ LANGUAGE plpgsql;