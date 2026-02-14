-- Simulate DDL event
CREATE TABLE audit_test (
    id SERIAL PRIMARY KEY,
    test_data TEXT
);

-- Simulate data modification
INSERT INTO audit_test (test_data) VALUES ('compliance_test');

-- Simulate privilege change
GRANT SELECT ON audit_test TO auditor;

