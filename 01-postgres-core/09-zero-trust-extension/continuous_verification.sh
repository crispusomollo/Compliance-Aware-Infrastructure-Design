#!/bin/bash

echo "Running continuous trust verification..."

# Check replication health
bash ../04-high-availability/replication_health_monitor.sh

# Check compliance score
bash ../10-compliance-dashboard/compliance_checks.sh 2>/dev/null

# Run anomaly detection
bash ../07-anomaly-detection/anomaly_detection.sh

echo "Zero-Trust verification cycle complete."

