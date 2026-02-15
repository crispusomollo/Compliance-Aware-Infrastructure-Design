#!/bin/bash

CONFIG="breach_threshold_config.json"
ANOMALY_LOG="../07-anomaly-detection/anomaly_report.log"
NOTICE_LOG="regulatory_notification_log.txt"

echo "Evaluating regulatory breach threshold..."

if grep -q "COPY (" $ANOMALY_LOG; then
    TIMESTAMP=$(date)

    echo "[$TIMESTAMP] Regulatory notification triggered." >> $NOTICE_LOG

    echo "Breach threshold met. Initiating notification simulation..."
    echo ""
    echo "---- REGULATOR NOTICE ----"
    cat regulator_notice_template.md
    echo ""
    echo "---- DATA SUBJECT NOTICE ----"
    cat data_subject_notice_template.md
else
    echo "No regulatory notification required."
fi

