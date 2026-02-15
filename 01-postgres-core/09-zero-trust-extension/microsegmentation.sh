#!/bin/bash

echo "Applying Zero-Trust microsegmentation rules..."

# Replace with bastion IP
BASTION_IP="10.0.0.10"

# Allow DB access only from bastion
sudo iptables -A INPUT -p tcp --dport 5432 -s $BASTION_IP -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 5432 -j DROP

echo "Database access restricted to bastion host."

