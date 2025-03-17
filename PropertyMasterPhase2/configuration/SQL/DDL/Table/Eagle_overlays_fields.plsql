CREATE TABLE IF NOT EXISTS eagle_overlays_fields
(
	field_name_override varchar(2000) NULL,
	gso_field varchar(500) NOT NULL,
	gsdm_table varchar(4) NOT NULL,
	gsdm_field varchar(200) NOT NULL,
	entity_table varchar(4) NOT NULL,
	oid_field varchar(200) NOT NULL,
	predicate varchar(2000) NULL,
	predicate_full varchar(4000) NULL
);