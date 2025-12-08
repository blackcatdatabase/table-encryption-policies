# encryption_policies

Encryption policy registry and parameters. policy_name is UNIQUE.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| aad_template | JSONB | YES |  | AAd JSON template. |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| layer_selection | TEXT | NO | defined | Layer selection algorithm. (enum: defined, round_robin, random, hash_mod) |
| max_layers | SMALLINT | NO | 3 | Maximum layers. |
| min_layers | SMALLINT | NO | 1 | Minimum layers. |
| mode | TEXT | NO |  | Execution mode. (enum: local, kms, multi-kms) |
| notes | TEXT | YES |  | Free-form notes. |
| policy_name | VARCHAR(100) | NO |  | Unique policy name (UNIQUE). |

## Engine Details

### mysql

### postgres

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_encryption_policies | mysql | algorithm=MERGE, security=INVOKER | [packages\encryption-policies\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/encryption-policies/schema/040_views.mysql.sql) |
| vw_encryption_policies | postgres |  | [packages\encryption-policies\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/encryption-policies/schema/040_views.postgres.sql) |
