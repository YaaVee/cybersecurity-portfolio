# Lab 3.1: Containerized Service Security & Hardening
**Location:** `/home/viora/cybersecurity-portfolio/03-devops-cloud-security/lab-03-container-orchestration-hardening`

## 1. Objective
To deploy multi-tier containerized applications using strict isolation blueprints, restricting network ingress/egress channels, setting resource constraints, and enforcing non-root runtime environments.

## 2. Defensive Strategies Applied
- `internal: true`: Network configuration parameter that entirely cuts off the database tier from the public internet.
- `read_only: true`: Restricts the web server root filesystem to prevent persistent file modification.
- `user: "70:70"`: Enforces execution privileges under a minimal, non-privileged system user account.

## 3. Operational State Analysis
Below is the verification evidence of the active container deployments:
```text
NAME                    IMAGE                COMMAND                  SERVICE      CREATED          STATUS          PORTS
frontend-isolated-app   nginx:alpine         "/docker-entrypoint.…"   secure-app   20 minutes ago   Up 20 minutes   0.0.0.0:8085->80/tcp, [::]:8085->80/tcp
production-secured-db   postgres:15-alpine   "docker-entrypoint.s…"   secure-db    22 minutes ago   Up 20 minutes   5432/tcp

```

## Lab 3.2: CI/CD Pipeline Automation, Security Scanning, and Infrastructure Code Linting

### 1. Objective
To construct a shift-left validation framework that programmatically checks infrastructure blueprints, detects privilege escalations, and ensures compliance with image tagging rules before runtime instantiation.

### 2. Engineering Commands Mastered
- `docker compose config`: Validates and parses the declarative composition file format.
- Automated String Analysis Patterns: Evaluates structural configuration profiles to ensure strict compliance.

### 3. Automated Validation Trace Logs
```text
[*] Commencing CI Pipeline Pre-Flight Security Checks...
Timestamp: 2026-05-22 20:14:54

[*] Stage 1: Evaluating Declarative Orchestration Schemas...
[+] Pass: docker-compose.yml structural integration validated.

[*] Stage 2: Simulating Static Application Security Testing (SAST) / Image Linting...
[+] Pass: Non-privileged USER declaration found within the application specification.
[+] Pass: Base image reference contains explicit version pinning.

[+] Compliance Check Completed. State logs archived in pipeline_audit.log.
```
