# Oracle Unified Auditing Mapping

## Enable Unified Auditing

```sql
ALTER SYSTEM SET audit_trail=DB,EXTENDED SCOPE=SPFILE;
```

## Create Audit Policy

```sql
CREATE AUDIT POLICY secure_policy
  ACTIONS CREATE USER, DROP USER, ALTER USER,
          GRANT, REVOKE,
          INSERT, UPDATE, DELETE;

AUDIT POLICY secure_policy;
```

## View Audit Logs

```sql
SELECT username,
       action_name,
       timestamp,
       sql_text
FROM unified_audit_trail;
```

## Compliance Equivalency

PostgreSQL → pgaudit
Oracle → Unified Auditing
