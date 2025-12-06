-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  encryption_policies

CREATE TABLE IF NOT EXISTS encryption_policies (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  policy_name VARCHAR(100) NOT NULL UNIQUE,
  mode ENUM('local','kms','multi-kms') NOT NULL,
  layer_selection ENUM('defined','round_robin','random','hash_mod') NOT NULL DEFAULT 'defined',
  min_layers TINYINT UNSIGNED NOT NULL DEFAULT 1,
  max_layers TINYINT UNSIGNED NOT NULL DEFAULT 3,
  aad_template JSON NULL,
  notes TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
