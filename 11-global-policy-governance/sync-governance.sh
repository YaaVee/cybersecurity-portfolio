#!/usr/bin/env bash
# Global Policy Orchestration
# Purpose: Synchronize security hardening policies across distributed nodes

NODES=("prod-cluster-01" "prod-cluster-02" "edge-gateway-10.20")

for node in "${NODES[@]}"; do
    echo "[+] Synchronizing policy to: $node"
    # Push latest OPA/Rego policies
    scp ../policies/security-baseline.rego root@$node:/etc/security/policies/
    
    # Trigger local enforcement refresh
    ssh root@$node "systemctl restart security-enforcer"
done

echo "[+] Governance synchronization complete."
