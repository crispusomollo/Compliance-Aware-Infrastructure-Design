#!/bin/bash

DATA_DIR="/var/lib/postgresql/16/main"
SIM_DIR="/var/lib/postgresql/16/main_simulated_encrypted"

echo "Simulating ransomware impact..."

sudo systemctl stop postgresql

sudo mv $DATA_DIR $SIM_DIR

echo "Database directory moved (simulated encryption)."
echo "PostgreSQL service stopped."
echo "Recovery required."

