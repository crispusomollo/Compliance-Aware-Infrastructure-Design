#!/bin/bash

LOG_SOURCE="/var/log/remote"
ARCHIVE="forensic_bundle_$(date +%Y%m%d_%H%M%S).tar.gz"

echo "Collecting forensic evidence..."

tar -czf $ARCHIVE $LOG_SOURCE

sha256sum $ARCHIVE > $ARCHIVE.hash

echo "Forensic evidence archived and hashed."

