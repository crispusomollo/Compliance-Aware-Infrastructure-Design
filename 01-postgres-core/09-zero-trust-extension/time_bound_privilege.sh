#!/bin/bash

USER="$1"
DURATION=600  # seconds

echo "Granting temporary DBA role to $USER"

psql -U postgres -c "GRANT dba_role TO $USER;"

sleep $DURATION

echo "Revoking DBA role from $USER"

psql -U postgres -c "REVOKE dba_role FROM $USER;"

