#!/bin/bash

LOGDIR="/var/log/remote"
REPORT="volume_anomaly.log"

COUNT=$(grep -r "SELECT" $LOGDIR | wc -l)

if [ $COUNT -gt 500 ]; then
    echo "High query volume anomaly detected: $COUNT queries" >> $REPORT
else
    echo "Query volume within expected range."
fi

