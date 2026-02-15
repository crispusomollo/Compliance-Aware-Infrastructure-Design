#!/bin/bash

BACKUP_DIR="/var/backups/postgres"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p $BACKUP_DIR

echo "Starting base backup..."

pg_basebackup -U replicator \
  -D "$BACKUP_DIR/base_$TIMESTAMP" \
  -Ft -z -P

echo "Base backup completed at $TIMESTAMP"

