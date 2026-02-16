# MySQL Control Equivalency Table

| Control Area | PostgreSQL | MySQL |
|--------------|------------|--------|
| Encryption | ssl = on | require_secure_transport |
| Authentication | SCRAM | caching_sha2_password |
| Audit | pgaudit | binlog / audit plugin |
| HA | Streaming replication | Replica configuration |
| Backup | pg_basebackup + WAL | mysqldump + binlog |
| Privilege Review | \du+ | mysql.user query |

## Purpose

Demonstrates cross-engine governance portability.

