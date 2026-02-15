#!/bin/bash

BACKUP_DIR="/var/backups/postgres"

echo "Validating backup presence..."

if [ "$(ls -A $BACKUP_DIR)" ]; then
    echo "Backups exist."
else
    echo "No backups found! Critical risk."
fi

echo "Checking WAL archive..."

if [ "$(ls -A /var/lib/postgresql/wal_archive)" ]; then
    echo "WAL archive present."
else
    echo "WAL archive missing!"
fi

