# Cryptographic Evidence & Conformance Report
System Verification Timestamp: 2026-05-22 20:43:56
Host Environment Kernel: 7.0.5-arch1-1

## 1. File Integrity & Cryptographic Signatures (SHA-256)
The following hashes provide mathematical proof of the integrity of your lab configurations:
```text
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  ./03-cloud-devsecops/lab-03-cicd-pipeline-hardening/README.md
304b54387a825808ce631a057b811033da9a600288c7e234decf4b2d03467be1  ./build-portfolio-index.sh
ee3d64c6d50f206a3b4575794bcfa3874dce7b27185cdff363e1ecf46eebc998  ./01-linux-fundamentals/lab-01-filesystem-automation/README.md
c552e1d66129f711af46688971f0e10bc1ed056e1ac78499dcfbd1cf1868f35a  ./01-linux-fundamentals/lab-01-filesystem-automation/auth_system.log
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  ./01-linux-fundamentals/lab-01-filesystem-automation/practice_dir/auth_audit.log
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  ./04-data-security-analysis/lab-04-log-parsing-automation/README.md
1fb0fb4ddac59cfb0669151e34a1008f26402e4bfc1e8a70d5fc1cc74f1388d0  ./03-devops-cloud-security/lab-03-container-orchestration-hardening/run-pipeline-validation.sh
43b7ceb0c7c8183e5b4a178beda36ecd137d2f1a6810344eefd1160997ffc3bb  ./03-devops-cloud-security/lab-03-container-orchestration-hardening/Dockerfile
855b11913487fac06f7dee816a95a238464d4a620ba7d5815a56f0c73d6d5c45  ./03-devops-cloud-security/lab-03-container-orchestration-hardening/pipeline_audit.log
2f4c601f53f8cf4b352b5467a5068dec05833ba06823fa261dda91f29ddf52d5  ./03-devops-cloud-security/lab-03-container-orchestration-hardening/README.md
771690c2f1ae24804db903c4a71afc8a8f357be971efeb3acbbe47da2e0e9a63  ./02-network-engineering-security/lab-02-segmentation-utm-routing/README.md
c552e1d66129f711af46688971f0e10bc1ed056e1ac78499dcfbd1cf1868f35a  ./02-network-engineering-security/lab-02-segmentation-utm-routing/auth_system.log
3deee5a70e52cb014ae0fd2aea53bae2e679bc5ab32e51c5cc9e6d5589628064  ./02-network-engineering-security/lab-02-segmentation-utm-routing/apply-utm-rules.sh
ebd6380e5b4fb864d7347fe267011644d103e600467656a54e4e705e7d325a3f  ./02-network-engineering-security/lab-02-segmentation-utm-routing/dummy_daemon.sh
4307d8e38448ac65fa402233cbf58b60f6d7293348ffbed0d6d94dbf419f0f14  ./01-linux-text-processing-log-analysis/lab-01-regex-log-parsing/README.md
```

## 2. Live Runtime Container Attestation
Active proof of container state, user IDs, and filesystem read-only parameters:
```text
Container: /frontend-isolated-app | User Context:  | ReadOnlyRootFS: true | NetworkMode: lab-03-container-orchestration-hardening_database-tier-isolated
Container: /production-secured-db | User Context: 70:70 | ReadOnlyRootFS: false | NetworkMode: lab-03-container-orchestration-hardening_database-tier-isolated
```

