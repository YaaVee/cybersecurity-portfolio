
### Domain D: Vulnerability Management & Governance Gating
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/run-vulnerability-gate.sh`
* **Defensive Controls:** Establishes an automated pre-orchestration gate that parses base-image layers against known Common Vulnerabilities and Exposures (CVEs). The utility programmatically calculates CVSS metrics and enforces a hard failure if vulnerabilities exceed defined corporate security risk thresholds.
* **Audit Artifacts:** Outputs detailed telemetry reports to `image_vulnerability_report.json` and records enforcement states inside `policy_evaluation.log`.

### Domain E: Kernel Surface Reduction & Linux Security Modules (LSM)
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/web-infrastructure-hardened-profile`
* **Defensive Controls:** Implements low-level system call filtering by provisioning custom AppArmor security profiles. Enforces an explicit deny-write policy on host kernel structures (`/sys`, `/proc`, `/etc`) and strips dangerous privileges (`CAP_NET_RAW`, `CAP_SYS_ADMIN`), isolating container execution paths from the underlying host operating system.
* **Audit Artifacts:** Records policy structural configuration status inside `kernel_hardening_audit.json`.
