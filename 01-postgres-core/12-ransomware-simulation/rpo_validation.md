# RPO Validation

## Objective

Ensure minimal or zero data loss after recovery.

## Validation Steps

1. Compare row counts before incident.
2. Compare row counts after restore.
3. Confirm WAL replay completed.

## Expected Result

RPO Achieved: YES

If asynchronous replication used, minor data loss may occur.

