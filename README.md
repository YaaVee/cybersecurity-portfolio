
### Domain D: Vulnerability Management & Governance Gating
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/run-vulnerability-gate.sh`
* **Defensive Controls:** Establishes an automated pre-orchestration gate that parses base-image layers against known Common Vulnerabilities and Exposures (CVEs). The utility programmatically calculates CVSS metrics and enforces a hard failure if vulnerabilities exceed defined corporate security risk thresholds.
* **Audit Artifacts:** Outputs detailed telemetry reports to `image_vulnerability_report.json` and records enforcement states inside `policy_evaluation.log`.
