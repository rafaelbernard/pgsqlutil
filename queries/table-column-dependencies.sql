
-- Check dependencies

SELECT
  d.objid::regclass AS owning_object,
  d.refobjid::regclass AS dependent_object,
  a.attname AS dependent_column,
  d.deptype -- The meaning of this type is documented at https://www.postgresql.org/docs/current/catalog-pg-depend.html
FROM pg_catalog.pg_depend d
LEFT JOIN pg_catalog.pg_attribute a ON d.refobjid = a.attrelid
  AND d.refobjsubid = a.attnum
WHERE refobjid = '<table>'::regclass
AND a.attname = '<column>';
