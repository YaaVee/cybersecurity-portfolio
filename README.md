# Security Engineering: Unified Architectural Framework

This framework provides an end-to-end implementation of a hardened, audit-ready security stack. The architecture integrates low-level OS security, cryptographic identity, and continuous compliance governance.

## Architectural Index

| Lab ID | Domain | Focus Area | Artifact Path |
| :--- | :--- | :--- | :--- |
| **3.5** | E | Kernel Surface Reduction (LSM) | `/logs/kernel_hardening_audit.json` |
| **3.6** | D | Vulnerability Management | `/logs/image_vulnerability_report.json` |
| **3.7** | F | Secrets Management (Vault) | `/logs/vault_secrets_audit.json` |
| **3.8** | G | mTLS Service Authentication | `/logs/mtls_handshake_audit.json` |
| **3.9** | H | Compliance-as-Code (OPA) | `/logs/compliance_audit_report.json` |
| **4.0** | - | IaC Governance (Sentinel) | `/logs/iac_compliance_report.json` |
| **5.0** | - | Threat Detection (SOC/SIEM) | `/logs/soc_incident_report.json` |

---

## Detailed Implementation Domains

### Lab 3.5 / Domain E: Kernel Surface Reduction & LSM
* **Controls:** Enforces `AppArmor` profiles to strip `CAP_SYS_ADMIN` and `CAP_NET_RAW`. Denies write access to host structures.

### Lab 3.6 / Domain D: Vulnerability Management & Governance
* **Controls:** Automated pre-orchestration CVE parsing and CVSS metric enforcement.

### Lab 3.7 / Domain F: Cryptographic Secrets Management
* **Controls:** Dynamic runtime injection using short-lived tokens and memory-encrypted K/V paths.

### Lab 3.8 / Domain G: Mutual TLS (mTLS) Zero-Trust
* **Controls:** Cryptographically bound mTLS handshakes via internal CA and SPIFFE identities.

### Lab 3.9 / Domain H: Compliance-as-Code (OPA/Rego)
* **Controls:** Declarative configuration auditing to prevent structural drift and privilege regression.

### Lab 4.0: Infrastructure-as-Code (IaC) Governance
* **Controls:** Sentinel policy interception for cloud resource provisioning, ensuring encryption and least-privilege by default.

### Lab 5.0: Automated SOC & Threat Detection
* **Controls:** Real-time log ingestion from Endian Firewall (10.20 segment) with anomaly detection triggers.

---

## Technical Evidence & Schematics
[Access Live Security Artifacts (JSON)](https://viora-portfolio.vercel.app/logs/index)

![System Architecture](https://raw.githubusercontent.com/YaaVee/cybersecurity-portfolio/main/public/images/master-architecture-summary.png)

*Copyright 2026, Viora Yaba Mensah. All Rights Reserved.*
