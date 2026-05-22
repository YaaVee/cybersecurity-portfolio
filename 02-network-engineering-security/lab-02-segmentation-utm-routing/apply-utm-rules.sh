#!/usr/bin/env bash
# Netfilter Firewall Enforcement Script for Local Infrastructure Hardening

set -euo pipefail

echo "[*] Initializing Network Security Rule Injection..."

# 1. Instantiate user-defined tracking chain
sudo iptables -N PORTFOLIO-FILTER || true
sudo iptables -F PORTFOLIO-FILTER

# 2. Wire the INPUT chain to jump to our custom filter
# Check if rule exists; if not, prepend it
if ! sudo iptables -C INPUT -j PORTFOLIO-FILTER 2>/dev/null; then
    sudo iptables -I INPUT 1 -j PORTFOLIO-FILTER
fi

# 3. Whitelist trusted management segments and loopback traffic
sudo iptables -A PORTFOLIO-FILTER -i lo -j ACCEPT
sudo iptables -A PORTFOLIO-FILTER -s 127.0.0.1 -j ACCEPT
sudo iptables -A PORTFOLIO-FILTER -s 10.20.0.0/16 -j ACCEPT
sudo iptables -A PORTFOLIO-FILTER -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

# 4. Explicit isolation rules for infrastructure ports exposed on 0.0.0.0
echo "[*] Hardening Database and Control Plane Sockets..."
sudo iptables -A PORTFOLIO-FILTER -p tcp --dport 5432 -j DROP    # PostgreSQL
sudo iptables -A PORTFOLIO-FILTER -p tcp --dport 27017 -j DROP   # MongoDB
sudo iptables -A PORTFOLIO-FILTER -p tcp --dport 6379 -j DROP    # Redis
sudo iptables -A PORTFOLIO-FILTER -p tcp --dport 6443 -j DROP    # Kubernetes API

echo "[+] Security policies injected successfully."
