-- Verify pgAudit installed
SELECT extname FROM pg_extension WHERE extname = 'pgaudit';

-- Verify pgaudit settings
SHOW pgaudit.log;
SHOW pgaudit.log_parameter;

-- Verify logging parameters
SHOW log_connections;
SHOW log_disconnections;
SHOW log_statement;

