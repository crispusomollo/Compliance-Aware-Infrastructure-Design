# MySQL Secure Hardening Mapping

## Encryption in Transit

require_secure_transport = ON


## Strong Authentication

default_authentication_plugin = caching_sha2_password


## Logging

log_error = /var/log/mysql/error.log
log_bin = mysql-bin.log


## Root Account Hardening

- Remove anonymous users
- Disallow remote root login
- Enforce strong root password

## Compliance Equivalency

Equivalent to PostgreSQL:
- SSL enabled
- SCRAM authentication
- Connection logging

