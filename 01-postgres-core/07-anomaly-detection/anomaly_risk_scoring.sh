#!/bin/bash

ANOMALY_LOG="anomaly_report.log"
VOLUME_LOG="volume_anomaly.log"

RISK_SCORE=0

if [ -s $ANOMALY_LOG ]; then
    ((RISK_SCORE+=2))
fi

if [ -s $VOLUME_LOG ]; then
    ((RISK_SCORE+=2))
fi

echo "Anomaly Risk Score: $RISK_SCORE"

if [ $RISK_SCORE -ge 3 ]; then
    echo "Risk Level: HIGH"
elif [ $RISK_SCORE -ge 1 ]; then
    echo "Risk Level: MEDIUM"
else
    echo "Risk Level: LOW"
fi

