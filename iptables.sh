#!/bin/bash

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" >&2
  exit 1
fi

# Flush existing rules
iptables -F

# Set default policies
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Allow loopback traffic
iptables -A INPUT -i lo -j ACCEPT

# Allow established connections
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Rate limit new connections
iptables -A INPUT -p tcp --dport 80 -m connlimit --connlimit-above 60 -j DROP
iptables -A INPUT -p tcp --dport 443 -m connlimit --connlimit-above 60 -j DROP

# SYN flood protection
iptables -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 3 -j ACCEPT
iptables -A INPUT -p tcp --syn -j DROP

# ICMP rate limiting
iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 1/s -j ACCEPT
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP

# Drop invalid packets
iptables -A INPUT -m conntrack --ctstate INVALID -j DROP

# Allow SSH (adjust port if necessary)
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Drop all other traffic
iptables -A INPUT -j DROP

# Save rules
if [ -d /etc/iptables ]; then
  iptables-save > /etc/iptables/rules.v4
else
  mkdir -p /etc/iptables
  iptables-save > /etc/iptables/rules.v4
fi

echo "IPTables rules configured and saved successfully"
