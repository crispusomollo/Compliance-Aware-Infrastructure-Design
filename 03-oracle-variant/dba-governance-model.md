# Oracle DBA Governance Model

## Privileged Role Review

```sql
SELECT * FROM dba_role_privs WHERE granted_role='DBA';
```

## Password Policy
```
SELECT * FROM dba_profiles WHERE resource_name='PASSWORD_LIFE_TIME';
```

## Separation of Duties

- SYS
- SYSTEM
- DBA
- Security Admin

## Equivalency

PostgreSQL → RBAC roles

Oracle → DBA role hierarchy
