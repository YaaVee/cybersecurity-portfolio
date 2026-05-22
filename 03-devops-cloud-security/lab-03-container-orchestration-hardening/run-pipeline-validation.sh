#!/usr/bin/env bash
set -euo pipefail
LOG_FILE="pipeline_audit.log"
echo "[*] Commencing CI Pipeline Pre-Flight Security Checks..." | tee "${LOG_FILE}"
date +"Timestamp: %Y-%m-%d %H:%M:%S" | tee -a "${LOG_FILE}"

echo -e "\n[*] Stage 1: Evaluating Declarative Orchestration Schemas..." | tee -a "${LOG_FILE}"
if docker compose config > /dev/null; then
    echo "[+] Pass: docker-compose.yml structural integration validated." | tee -a "${LOG_FILE}"
else
    echo "[-] Fail: Structural errors detected in docker-compose.yml." | tee -a "${LOG_FILE}"
    exit 1
fi

echo -e "\n[*] Stage 2: Simulating Static Application Security Testing (SAST) / Image Linting..." | tee -a "${LOG_FILE}"
if grep -q "USER" Dockerfile; then
    echo "[+] Pass: Non-privileged USER declaration found within the application specification." | tee -a "${LOG_FILE}"
else
    echo "[-] Warning: Application specification runs with unchecked root permissions." | tee -a "${LOG_FILE}"
fi

if grep -qE "FROM .*(:.*|@sha256:)" Dockerfile; then
    echo "[+] Pass: Base image reference contains explicit version pinning." | tee -a "${LOG_FILE}"
else
    echo "[-] Warning: Mutable base image tags detected. Vulnerable to upstream drift." | tee -a "${LOG_FILE}"
fi
echo -e "\n[+] Compliance Check Completed. State logs archived in ${LOG_FILE}." | tee -a "${LOG_FILE}"
