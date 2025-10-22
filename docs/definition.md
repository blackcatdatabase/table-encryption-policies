<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – encryption_policies

Encryption policy registry and parameters.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| policy_name | VARCHAR(100) | NO | — | Unique policy name. |  |
| mode | ENUM('local','kms','multi-kms') | NO | — | Execution mode. | enum: local, kms, multi-kms |
| layer_selection | ENUM('defined','round_robin','random','hash_mod') | NO | ''defined'' | Layer selection algorithm. | enum: defined, round_robin, random, hash_mod |
| min_layers | TINYINT UNSIGNED | NO | 1 | Minimum layers. |  |
| max_layers | TINYINT UNSIGNED | NO | 3 | Maximum layers. |  |
| aad_template | JSON | YES | — | AAd JSON template. |  |
| notes | TEXT | YES | — | Free-form notes. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |