#!/bin/bash

LOGDIR="/var/log/remote"
ALERTS="siem_alerts.log"

echo "Scanning logs for critical events..."

# Unauthorized DDL
grep -r "ALTER TABLE" $LOGDIR >> $ALERTS

# Failed login attempts
grep -r "authentication failed" $LOGDIR >> $ALERTS

# Replication failure
grep -r "replication" $LOGDIR | grep -i "error" >> $ALERTS

if [ -s $ALERTS ]; then
    echo "ALERTS DETECTED:"
    cat $ALERTS
else
    echo "No critical alerts detected."
fi

