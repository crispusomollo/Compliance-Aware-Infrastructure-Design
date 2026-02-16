# MySQL Privilege Model

## User Review

```sql
SELECT user, host, Super_priv FROM mysql.user;
```

## Role-Based Access

MySQL supports roles (8+):
```
CREATE ROLE app_role;

GRANT SELECT ON db.* TO app_role;
```

## Privileged Access Review

Quarterly review of:

- SUPER privilege
- FILE privilege
- REPLICATION privilege

## Equivalency

PostgreSQL → RBAC model
MySQL → user privilege table
