#!/usr/bin/env bash
# Remediation Engine: Automated Security Containment
# Triggered by: soc_incident_report.json (Lab 5.0)

LOG_FILE="../05-soc-threat-detection/threat_alerts.json"

if [ -f "$LOG_FILE" ]; then
    echo "[!] Critical Event Detected: Initiating Self-Healing Protocol..."
    
    # Action 1: Isolate container via Docker network disconnect
    docker network disconnect bridge web-infrastructure-container
    
    # Action 2: Revoke Vault access for the compromised workload
    # Assuming standard vault cli path for dynamic secret revocation
    vault lease revoke -prefix "secret/data/workload-id-01"
    
    echo "[+] Remediation Complete: Workload Isolated and Credentials Revoked."
fi
