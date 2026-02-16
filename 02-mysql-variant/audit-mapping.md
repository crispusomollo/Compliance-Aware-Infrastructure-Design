# MySQL Audit Logging Mapping

## Binary Logging
```
log_bin = mysql-bin.log
server_id = 1
```
Binary logs provide:

- DML traceability
- Replication consistency
- Change reconstruction

## Audit Plugin (Enterprise)

MySQL Enterprise supports audit plugin for detailed event logging.

## Log Review Example

```bash
mysqlbinlog mysql-bin.000001
```

## Compliance Equivalency

PostgreSQL → pgaudit
MySQL → binary log + audit plugin
