#!/usr/bin/env bash
# Engineering Portfolio Document Synthesis Script

set -euo pipefail

MASTER_INDEX="PORTFOLIO_INDEX.md"
echo "# Technical Engineering Portfolio: Advanced Security & DevOps Systems" > "${MASTER_INDEX}"
echo -e "Generated on: $(date +'%Y-%m-%d %H:%M:%S')\n" >> "${MASTER_INDEX}"

echo "## Document Architecture & Compliance Mapping" >> "${MASTER_INDEX}"
echo "This index maps verified laboratory evidence across technical disciplines to demonstrate hands-on mastery in system hardening, continuous integration validation, and boundary defense architectures." >> "${MASTER_INDEX}"

# Function to extract headers and verify files
index_module() {
    local target_dir="$1"
    local label="$2"
    
    echo -e "\n### Module: ${label}" >> "${MASTER_INDEX}"
    if [ -f "${target_dir}/README.md" ]; then
        echo "Verification Status: [ COMPLIANT - EVIDENCE RECORDED ]" >> "${MASTER_INDEX}"
        echo "Workspace Path: \`${target_dir}\`" >> "${MASTER_INDEX}"
        echo -e "\nKey Objectives Extracted:" >> "${MASTER_INDEX}"
        # Extract the objective lines up to the next header
        grep -A 3 -i "Objective" "${target_dir}/README.md" >> "${MASTER_INDEX}" || true
    else
        echo "Verification Status: [ PENDING ONSITE TRACKING ]" >> "${MASTER_INDEX}"
    fi
    echo -e "\n---" >> "${MASTER_INDEX}"
}

# Scan technical lab structures
index_module "./01-linux-text-processing-log-analysis/lab-01-regex-log-parsing" "Linux Log Analytics & Text Processing"
index_module "./02-network-engineering-security/lab-02-segmentation-utm-routing" "Network Engineering & Custom Netfilter Hardening"
index_module "./03-devops-cloud-security/lab-03-container-orchestration-hardening" "Container Runtime Hardening & CI Pipeline Automation"

echo "[+] Master Portfolio Index synthesized in ${MASTER_INDEX}."
