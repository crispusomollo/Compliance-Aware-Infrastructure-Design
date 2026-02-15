#!/bin/bash

QUERY="$1"
REGISTRY="approved_changes.json"

if jq -e --arg q "$QUERY" '.approved_changes[].statement == $q' $REGISTRY > /dev/null; then
    echo "Change approved. Executing..."
    psql -U postgres -c "$QUERY"
else
    echo "Change NOT approved. Execution blocked."
    exit 1
fi
