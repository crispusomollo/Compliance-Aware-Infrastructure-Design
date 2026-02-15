# Bastion Access Enforcement

## Model

Users must connect:
```
User → Bastion Host → PostgreSQL
```
## Controls

- SSH key-only authentication
- Root login disabled
- MFA simulated at bastion level
- Database port not publicly exposed

## Risk Reduction

- Eliminates direct DB exposure
- Centralizes privileged access monitoring

