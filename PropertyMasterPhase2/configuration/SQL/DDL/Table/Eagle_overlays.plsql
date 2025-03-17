CREATE TABLE IF NOT EXISTS eagle_overlays
(
	security_alias varchar(2000) NOT NULL,
	primary_asset_id varchar(2000) NULL,
	primary_asset_id_type varchar(2000) NULL,
	investment_type varchar(2000) NULL,
	security_type varchar(2000) NULL,
	field_id varchar(2000) NULL,
	field_name_override varchar(2000) NOT NULL,
	field_value_override varchar(2000) NULL,
	begin_date varchar(2000) NULL,
	end_date varchar(2000) NULL,
	update_date varchar(2000) NULL
);