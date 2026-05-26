#!/usr/bin/env bash
# IAP Controller: Context-Aware Access Evaluation
# Integrates Risk Scoring with Network Access

RISK_SCORE=$(cat /logs/soc_incident_report.json | jq '.risk_score')

if [ "$RISK_SCORE" -gt 80 ]; then
    echo "[!] High Risk Detected: Revoking Identity Context..."
    # Revoke access token in the Identity Provider
    ./revoke-identity-session.sh --user "admin"
    # Isolate segment
    docker network disconnect zero-trust-net compromised-user-vnode
fi
