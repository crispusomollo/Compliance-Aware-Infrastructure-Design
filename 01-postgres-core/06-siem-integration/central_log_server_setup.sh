#!/bin/bash

echo "Installing rsyslog..."

sudo apt update
sudo apt install -y rsyslog

echo "Enabling UDP listener on port 514..."

sudo sed -i 's/#module(load="imudp")/module(load="imudp")/' /etc/rsyslog.conf
sudo sed -i 's/#input(type="imudp" port="514")/input(type="imudp" port="514")/' /etc/rsyslog.conf

echo "Configuring remote log storage..."

echo '$template RemoteLogs,"/var/log/remote/%HOSTNAME%/%PROGRAMNAME%.log"' | sudo tee /etc/rsyslog.d/remote.conf
echo '*.* ?RemoteLogs' | sudo tee -a /etc/rsyslog.d/remote.conf

sudo systemctl restart rsyslog

echo "Central log server ready."

