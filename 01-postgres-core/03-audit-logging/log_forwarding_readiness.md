# Log Forwarding Readiness

PostgreSQL logs are stored in:
```
/var/log/postgresql/
```
These logs can be forwarded to a centralized SIEM using rsyslog.

## Forwarding Model

Database → Local Log → rsyslog → Central Log Server → Alert Engine

## Security Controls

- Logs protected with restricted file permissions
- Logs copied to immutable archive for investigations
- Evidence hashed for integrity validation

