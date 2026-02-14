#!/bin/bash
set -e

echo "Updating system..."
sudo apt update

echo "Installing PostgreSQL..."
sudo apt install -y postgresql postgresql-contrib

PG_VERSION=$(psql -V | awk '{print $3}' | cut -d '.' -f1)
PG_CONF="/etc/postgresql/$PG_VERSION/main/postgresql.conf"
PG_HBA="/etc/postgresql/$PG_VERSION/main/pg_hba.conf"

echo "Hardening PostgreSQL configuration..."

# Enable SSL
sudo sed -i "s/#ssl = off/ssl = on/" $PG_CONF

# Enforce strong password encryption
sudo sed -i "s/#password_encryption = md5/password_encryption = scram-sha-256/" $PG_CONF

# Log connections & disconnections
sudo sed -i "s/#log_connections = off/log_connections = on/" $PG_CONF
sudo sed -i "s/#log_disconnections = off/log_disconnections = on/" $PG_CONF

# Log DDL
echo "log_statement = 'ddl'" | sudo tee -a $PG_CONF

# Secure pg_hba.conf
echo "hostssl all all 0.0.0.0/0 scram-sha-256" | sudo tee -a $PG_HBA

echo "Restarting PostgreSQL..."
sudo systemctl restart postgresql

echo "Secure installation complete."

