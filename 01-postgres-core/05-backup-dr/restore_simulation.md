# Restore Simulation Procedure

## Step 1 – Stop PostgreSQL

```bash
sudo systemctl stop postgresql
```

## Step 2 – Move Current Data Directory

```bash
sudo mv /var/lib/postgresql/16/main \
        /var/lib/postgresql/16/main_old
```

## Step 3 – Restore Base Backup

```bash
tar -xzf base_backup.tar.gz -C /var/lib/postgresql/16/main
```

## Step 4 – Configure restore_command

```
restore_command = 'cp /var/lib/postgresql/wal_archive/%f %p'
```

## Step 5 – Start PostgreSQL

```
sudo systemctl start postgresql
```

## Step 6 – Validate Data Integrity
```
SELECT COUNT(*) FROM critical_table;
```


