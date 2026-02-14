-- =========================================
-- Enable pgAudit Extension
-- =========================================

-- Install extension (requires superuser)
CREATE EXTENSION IF NOT EXISTS pgaudit;

-- Configure auditing parameters
ALTER SYSTEM SET pgaudit.log = 'read, write, ddl';
ALTER SYSTEM SET pgaudit.log_catalog = on;
ALTER SYSTEM SET pgaudit.log_parameter = on;

-- Reload configuration
SELECT pg_reload_conf();

