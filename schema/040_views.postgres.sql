-- Auto-generated from schema-views-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  encryption_policies
-- Contract view for [encryption_policies]
CREATE OR REPLACE VIEW vw_encryption_policies AS
SELECT
  id,
  policy_name,
  mode,
  layer_selection,
  min_layers,
  max_layers,
  aad_template,
  notes,
  created_at
FROM encryption_policies;
