# Oracle Control Equivalency Table

| Control Area | PostgreSQL | Oracle |
|--------------|------------|--------|
| Encryption | ssl = on | SQLNET.ENCRYPTION |
| Audit | pgaudit | Unified Auditing |
| HA | Streaming replication | Data Guard |
| Backup | pg_basebackup + WAL | RMAN |
| Privilege Review | \du+ | dba_role_privs |
| Change Control | DDL gate script | Audited DDL policies |

## Purpose

Demonstrates enterprise governance equivalency across database engines.

