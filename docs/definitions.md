# encryption_policies

Encryption policy registry and parameters. policy_name is UNIQUE.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| policy_name | VARCHAR(100) | NO |  | Unique policy name (UNIQUE). |
| aad_template | mysql: JSON / postgres: JSONB | YES |  | AAd JSON template. |
| max_layers | mysql: TINYINT / postgres: SMALLINT | NO | 3 | Maximum layers. |
| min_layers | mysql: TINYINT / postgres: SMALLINT | NO | 1 | Minimum layers. |
| notes | TEXT | YES |  | Free-form notes. |
| layer_selection | mysql: ENUM('defined','round_robin','random','hash_mod') / postgres: TEXT | NO | defined | Layer selection algorithm. (enum: defined, round_robin, random, hash_mod) |
| mode | mysql: ENUM('local','kms','multi-kms') / postgres: TEXT | NO |  | Execution mode. (enum: local, kms, multi-kms) |

## Engine Details

### mysql

### postgres

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_encryption_policies | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_encryption_policies | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
