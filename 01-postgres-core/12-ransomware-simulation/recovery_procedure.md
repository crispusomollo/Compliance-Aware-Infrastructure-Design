# Ransomware Recovery Procedure

## Step 1 – Confirm Backup Availability

```bash
ls -lh /var/backups/postgres
```

## Step 2 – Restore Base Backup

```bash
sudo tar -xzf base_backup.tar.gz -C /var/lib/postgresql/16/main
```

## Step 3 – Configure WAL Restore

```
restore_command = 'cp /var/lib/postgresql/wal_archive/%f %p'
```

## Step 4 – Restart PostgreSQL

```
sudo systemctl start postgresql
```

## Step 5 – Validate Data Integrity

```sql
SELECT COUNT(*) FROM audit_test;
```

