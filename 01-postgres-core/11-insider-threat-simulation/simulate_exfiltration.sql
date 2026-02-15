-- =========================================
-- Insider Threat Simulation
-- =========================================

-- Simulate bulk data extraction
COPY (
    SELECT * FROM audit_test
) TO '/tmp/export.csv' CSV HEADER;

-- Simulate repeated sensitive access
SELECT * FROM audit_test;
SELECT * FROM audit_test;
SELECT * FROM audit_test;

