#!/bin/bash

BASELINE="baseline_profile.json"
LOGDIR="/var/log/remote"
REPORT="anomaly_report.log"

echo "Running anomaly detection..."

START=$(jq .normal_hours_start $BASELINE)
END=$(jq .normal_hours_end $BASELINE)
CURRENT_HOUR=$(date +%H)

# Off-hours detection
if [ $CURRENT_HOUR -lt $START ] || [ $CURRENT_HOUR -gt $END ]; then
    grep -r "SELECT" $LOGDIR >> $REPORT
fi

# Sensitive table access detection
for table in $(jq -r '.restricted_tables[]' $BASELINE); do
    grep -r "$table" $LOGDIR >> $REPORT
done

echo "Anomaly detection completed."

