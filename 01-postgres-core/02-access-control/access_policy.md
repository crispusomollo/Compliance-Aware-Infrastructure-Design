# PostgreSQL Access Control Policy

## Principles

- Least privilege enforced
- No shared accounts
- All DBA access time-bound
- Quarterly privileged access review required
- All role changes documented via change management

## Separation of Duties

| Role | Responsibility |
|------|----------------|
| app_user | Application-level access only |
| auditor | Read-only audit visibility |
| dba_role | Schema and configuration management |
| security_admin | Role management |

## Review Cadence

- Privileged accounts reviewed quarterly
- Excess privilege triggers remediation

