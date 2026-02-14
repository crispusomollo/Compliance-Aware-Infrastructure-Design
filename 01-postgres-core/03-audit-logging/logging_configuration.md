# PostgreSQL Audit Logging Configuration

## Required Parameters

log_connections = on
log_disconnections = on
log_statement = 'ddl'
log_min_duration_statement = 500
pgaudit.log = 'read, write, ddl'

## Log Retention Policy

- Logs retained for 180 days
- Archived monthly
- Immutable copy stored for incident investigations

## Compliance Mapping

- Audit logging supports traceability requirements
- Enables forensic reconstruction
- Supports regulatory evidence preservation

