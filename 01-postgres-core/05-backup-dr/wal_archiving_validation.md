# WAL Archiving Validation

## Required Configuration

```
archive_mode = on
archive_command = 'cp %p /var/lib/postgresql/wal_archive/%f'
```


## Validation Steps

1. Generate database activity
2. Check WAL archive directory:

```bash
ls -lh /var/lib/postgresql/wal_archive
```
3. Confirm WAL segments increasing


### Risk if Misconfigured

- Inability to perform point-in-time recovery
- Non-compliant backup posture
