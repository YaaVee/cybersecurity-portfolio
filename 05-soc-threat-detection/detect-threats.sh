#!/usr/bin/env bash
# SIEM Engine: Real-time SSH Anomaly Detection
# Targets the 10.20 network segment logs

LOG_FILE="/var/log/auth.log"
ALERT_FILE="threat_alerts.json"

echo "[+] Initiating SOC Telemetry Ingestion from 10.20 Segment..."

# Logic: Search for multiple failed logins (brute force)
FAILED_ATTEMPTS=$(grep "Failed password" $LOG_FILE | tail -n 5 | wc -l)

if [ "$FAILED_ATTEMPTS" -ge 3 ]; then
    echo "{\"event\": \"BRUTE_FORCE_DETECTED\", \"source\": \"10.20.0.1\", \"status\": \"ALERT\"}" > $ALERT_FILE
    echo "[!] Threat Detected: Brute force attack pattern identified."
fi
