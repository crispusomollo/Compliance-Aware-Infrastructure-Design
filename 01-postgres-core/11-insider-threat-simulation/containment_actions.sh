#!/bin/bash

USER="$1"

echo "Initiating containment for user: $USER"

psql -U postgres -c "ALTER ROLE $USER NOLOGIN;"
psql -U postgres -c "REVOKE dba_role FROM $USER;"

echo "User access disabled and elevated privileges revoked."

