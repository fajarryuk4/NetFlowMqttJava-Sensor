#!/bin/sh

# Install required package
apt-get update
apt-get install -y libpcap0.8 libpcap-dev

# Gain Access
chmod -R 775 /root/CICFlowMeter-4.0