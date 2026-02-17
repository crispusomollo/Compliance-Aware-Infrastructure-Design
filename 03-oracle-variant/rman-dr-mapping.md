# Oracle RMAN Disaster Recovery Model

## Backup Example

```sql
RMAN> BACKUP DATABASE PLUS ARCHIVELOG;
```

## Restore Example

```
RMAN> RESTORE DATABASE;
RMAN> RECOVER DATABASE;
```

## Retention Policy

```sql
CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 7 DAYS;
```

## Compliance Equivalency

PostgreSQL → base backup + WAL
Oracle → RMAN + archive logs
