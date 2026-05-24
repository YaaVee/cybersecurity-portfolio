
### Domain D: Vulnerability Management & Governance Gating
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/run-vulnerability-gate.sh`
* **Defensive Controls:** Establishes an automated pre-orchestration gate that parses base-image layers against known Common Vulnerabilities and Exposures (CVEs). The utility programmatically calculates CVSS metrics and enforces a hard failure if vulnerabilities exceed defined corporate security risk thresholds.
* **Audit Artifacts:** Outputs detailed telemetry reports to `image_vulnerability_report.json` and records enforcement states inside `policy_evaluation.log`.

### Domain E: Kernel Surface Reduction & Linux Security Modules (LSM)
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/web-infrastructure-hardened-profile`
* **Defensive Controls:** Implements low-level system call filtering by provisioning custom AppArmor security profiles. Enforces an explicit deny-write policy on host kernel structures (`/sys`, `/proc`, `/etc`) and strips dangerous privileges (`CAP_NET_RAW`, `CAP_SYS_ADMIN`), isolating container execution paths from the underlying host operating system.
* **Audit Artifacts:** Records policy structural configuration status inside `kernel_hardening_audit.json`.

### Domain F: Enterprise Cryptographic Secrets Management & Runtime Ingestion
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/run-vault-secrets-injection.sh`
* **Defensive Controls:** Eliminates persistent plaintext credential risks by deploying a dynamic runtime injection framework modeled on HashiCorp Vault. Workloads leverage short-lived tokens to authenticate and query memory-encrypted key-value paths governed by explicit access control lists (ACLs).
* **Audit Artifacts:** Outputs system access tracking states to `vault_secrets_audit.json` and evaluates permissions through `web-infrastructure-secrets-policy.hcl`.

### Domain G: Mutual TLS (mTLS) Service-to-Service Authentication
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/run-mtls-handshake-verification.sh`
* **Defensive Controls:** Implements zero-trust network boundary protections by mandating cryptographically bound Mutual TLS (mTLS) handshakes for all lateral service communications. Utilizes unique X.509 certificate identities and SPIFFE data schemas validated against an internal root Certificate Authority, enforcing cipher encapsulation (`TLS_AES_256_GCM_SHA384`) to neutralize sniffing and packet manipulation threats.
* **Audit Artifacts:** Outputs network connection telemetry states to `mtls_handshake_audit.json` and evaluates configurations using `web-infrastructure-mtls-config.json`.

### Domain H: Automated Compliance-as-Code Auditing (OPA/Rego)
* **Implementation:** `03-devops-cloud-security/lab-03-container-orchestration-hardening/run-compliance-audit.sh`
* **Defensive Controls:** Implements automated, shift-left configuration auditing by translating enterprise security guardrails into declarative Rego policy files. The validation engine programmatically inspects deployment definitions to block configuration drift, ensuring unprivileged execution context compliance before deployment cycles complete.
* **Audit Artifacts:** Generates structured compliance tracking metrics inside `compliance_audit_report.json` based on constraints defined in `container_policy.rego`.
