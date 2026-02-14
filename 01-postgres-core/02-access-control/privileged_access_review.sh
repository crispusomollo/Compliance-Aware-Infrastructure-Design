#!/bin/bash

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
OUTPUT="privileged_access_review_$TIMESTAMP.txt"

echo "Generating PostgreSQL privileged access report..."

psql -U postgres -c "\du+" > $OUTPUT

echo "Privileged access review saved to $OUTPUT"

