# encryption_policies

Encryption policy registry and parameters. policy_name is UNIQUE.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| aad_template | JSON | YES |  | AAd JSON template. |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| layer_selection | ENUM('defined','round_robin','random','hash_mod') | NO | defined | Layer selection algorithm. (enum: defined, round_robin, random, hash_mod) |
| max_layers | TINYINT | NO | 3 | Maximum layers. |
| min_layers | TINYINT | NO | 1 | Minimum layers. |
| mode | ENUM('local','kms','multi-kms') | NO |  | Execution mode. (enum: local, kms, multi-kms) |
| notes | TEXT | YES |  | Free-form notes. |
| policy_name | VARCHAR(100) | NO |  | Unique policy name (UNIQUE). |

## Engine Details

### mysql

### postgres

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_encryption_policies | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_encryption_policies | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
