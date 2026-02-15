#!/bin/bash

echo "Checking replication health..."

STATUS=$(psql -U postgres -t -c "SELECT state FROM pg_stat_replication;" | xargs)

if [ "$STATUS" = "streaming" ]; then
    echo "Replication healthy."
else
    echo "Replication issue detected!"
fi

