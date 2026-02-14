-- =========================================
-- ROLE-BASED ACCESS CONTROL MODEL
-- =========================================

-- Application role
CREATE ROLE app_user LOGIN PASSWORD 'StrongAppPass123';

-- Read-only auditor role
CREATE ROLE auditor NOLOGIN;

-- DBA role (no direct login)
CREATE ROLE dba_role NOLOGIN;

-- Security admin role
CREATE ROLE security_admin NOLOGIN;

-- Grant minimal privileges
GRANT CONNECT ON DATABASE postgres TO app_user;

-- Example schema control
GRANT USAGE ON SCHEMA public TO app_user;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO auditor;

-- Grant DBA role to postgres superuser only
GRANT dba_role TO postgres;

-- Principle: No shared login accounts.

