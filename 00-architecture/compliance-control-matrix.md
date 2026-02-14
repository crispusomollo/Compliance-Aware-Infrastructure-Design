# Compliance Control Matrix

| Control Area | PostgreSQL | MySQL Variant | Oracle Variant |
|--------------|------------|--------------|---------------|
| Encryption in Transit | SSL enabled | require_secure_transport | SQLNET.ENCRYPTION |
| Audit Logging | pgaudit | binary logs | unified auditing |
| Role Separation | RBAC roles | mysql.user model | DBA roles |
| HA Strategy | streaming replication | replica config | Data Guard |
| Backup | base backup + WAL | mysqldump + binlog | RMAN |
| Privilege Review | automated script | privilege query | dba_role_privs |

