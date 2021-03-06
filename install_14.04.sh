#!/bin/bash
echo "Installing wifi reset service to /opt/wifi-reset."
mkdir -p /opt/wifi-reset
cp -f wifi-reset.sh /opt/wifi-reset/wifi-reset.sh
echo "Installing systemd service to run at boot."
cp -f wifi-reset.service /etc/init.d/wifi-reset.service
echo "Enabling systemd service."
update-rc.d wifi-reset.service defaults
