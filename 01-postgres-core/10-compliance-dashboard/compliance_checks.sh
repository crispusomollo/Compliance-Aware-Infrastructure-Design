#!/bin/bash

SCORE=0
TOTAL=6

echo "Running compliance checks..."

# 1. SSL Enabled
if psql -U postgres -t -c "SHOW ssl;" | grep -q on; then
    ((SCORE++))
    echo "[PASS] SSL enabled"
else
    echo "[FAIL] SSL not enabled"
fi

# 2. SCRAM authentication
if psql -U postgres -t -c "SHOW password_encryption;" | grep -q scram; then
    ((SCORE++))
    echo "[PASS] SCRAM authentication enforced"
else
    echo "[FAIL] Weak password encryption"
fi

# 3. Audit logging
if psql -U postgres -t -c "SHOW pgaudit.log;" | grep -q write; then
    ((SCORE++))
    echo "[PASS] Audit logging active"
else
    echo "[FAIL] Audit logging missing"
fi

# 4. Replication health
if psql -U postgres -c "SELECT state FROM pg_stat_replication;" | grep -q streaming; then
    ((SCORE++))
    echo "[PASS] Replication healthy"
else
    echo "[WARN] Replication not detected"
fi

# 5. WAL archive present
if [ -d "/var/lib/postgresql/wal_archive" ]; then
    ((SCORE++))
    echo "[PASS] WAL archive configured"
else
    echo "[FAIL] WAL archive missing"
fi

# 6. Backup presence
if [ "$(ls -A /var/backups/postgres 2>/dev/null)" ]; then
    ((SCORE++))
    echo "[PASS] Backups present"
else
    echo "[FAIL] No backups found"
fi

echo ""
echo "Compliance Score: $SCORE / $TOTAL"

if [ $SCORE -eq $TOTAL ]; then
    echo "Risk Level: LOW"
elif [ $SCORE -ge 4 ]; then
    echo "Risk Level: MEDIUM"
else
    echo "Risk Level: HIGH"
fi

