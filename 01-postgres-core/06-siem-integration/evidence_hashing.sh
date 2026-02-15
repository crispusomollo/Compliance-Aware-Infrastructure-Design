#!/bin/bash

TARGET_DIR="/var/log/remote"
ARCHIVE="evidence_$(date +%Y%m%d_%H%M%S).tar.gz"

echo "Archiving logs..."

tar -czf $ARCHIVE $TARGET_DIR

echo "Generating SHA256 hash..."

sha256sum $ARCHIVE > $ARCHIVE.hash

echo "Evidence archived and hashed."

