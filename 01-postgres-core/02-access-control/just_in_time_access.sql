-- =========================================
-- JUST-IN-TIME PRIVILEGE ELEVATION
-- =========================================

-- Temporarily grant DBA role
GRANT dba_role TO app_user;

-- To revoke after maintenance window:
REVOKE dba_role FROM app_user;

-- This should be automated in real systems
-- and tied to change management approval.

