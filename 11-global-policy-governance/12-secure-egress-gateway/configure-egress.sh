#!/usr/bin/env bash
# Secure Egress Gateway Configuration
# Purpose: Route all cloud traffic through an inspection firewall

REGIONS=("us-east-1" "eu-central-1" "af-south-1")

for region in "${REGIONS[@]}"; do
    echo "[+] Configuring secure egress for: $region"
    # Apply egress filter to Kubernetes namespace
    kubectl apply -f egress-filter-policy.yaml --context=$region
    
    # Enforce TLS 1.3 at the gateway
    aws elbv2 modify-listener --listener-arn $REGION_LISTENER_ARN \
        --ssl-policy ELBSecurityPolicy-TLS-1-3-2021-06
done

echo "[+] Egress gateway inspection active across all regions."
