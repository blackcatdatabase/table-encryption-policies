<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – encryption_policies

Encryption policy registry and parameters. policy_name is UNIQUE.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| policy_name | VARCHAR(100) | NO | — | Unique policy name (UNIQUE). |  |
| mode | TEXT | NO | — | Execution mode. | enum: local, kms, multi-kms |
| layer_selection | TEXT | NO | 'defined' | Layer selection algorithm. | enum: defined, round_robin, random, hash_mod |
| min_layers | SMALLINT | NO | 1 | Minimum layers. |  |
| max_layers | SMALLINT | NO | 3 | Maximum layers. |  |
| aad_template | JSONB | YES | — | AAd JSON template. |  |
| notes | TEXT | YES | — | Free-form notes. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |