# PostgreSQL Streaming Replication Setup

## Architecture

Primary → Replica (Streaming Replication)

## On Primary

Edit postgresql.conf:
```
wal_level = replica

max_wal_senders = 10

max_replication_slots = 10

archive_mode = on

archive_command = 'cp %p /var/lib/postgresql/wal_archive/%f'
```

Create replication user:

```sql
CREATE ROLE replicator WITH REPLICATION LOGIN PASSWORD 'StrongRepPass';
```

## On Replica

Run base backup:
```bash
pg_basebackup -h <PRIMARY_IP> -D /var/lib/postgresql/16/main \
  -U replicator -P -R
```

Start replica:
```
sudo systemctl start postgresql
```


