-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
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
