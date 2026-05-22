# Lab 1.1: Core Navigation and System Data Streams
**Location:** /home/viora/cybersecurity-portfolio/01-linux-fundamentals/lab-01-filesystem-automation

## 1. Objective
To master fundamental Linux terminal navigation, file creation, data stream redirection, and advanced multi-line file generation using Heredocs.

## 2. Core Mechanics Mastered
- \pwd\: Verifies the absolute folder location within the kernel file hierarchy.
- \cat\: Reads and processes sequential data streams.
- \>\ and \>>\: Manages data overwrites and file appends.
- \<< EOF\: Generates comprehensive, multi-line data files natively without manual text-editor interception.

## 3. Compiled Configuration Metadata
Below is the verified rule matrix extracted directly from the system text stream:
# Ambient Enterprise Network Segment Rules
# Location: /home/viora/cybersecurity-portfolio/01-linux-fundamentals/lab-01-filesystem-automation
ZONE=internal
IP_SEGMENT=10.20.0.0/16
GATEWAY_UTM=10.20.1.1
ALLOWED_PROTOCOLS=SSH,HTTPS,ICMP
INGRESS_FILTER=DROP_ALL

## Unit 3: Log Extraction and Text Parsing
**Location:** /home/viora/cybersecurity-portfolio/01-linux-fundamentals/lab-01-filesystem-automation

### 1. Concept Summary
System log analysis requires filtering out standard informational messages to focus on security anomalies. By piping outputs into patterns matches, we extract actionable intelligence natively.

### 2. Analytical Commands Mastered
- \grep [pattern]\: Isolates and displays string matches.
- \tail -n [count]\: Inspects historical trailing lines of active logs.
- \|\ (Pipe): Chains commands together by passing the output stream of one process directly to the input stream of the next.

### 3. Verified Security Flags Discovered Natively
```text
[Execute 'cat auth_system.log | grep -E "WARNING|CRITICAL"' in your terminal and paste the lines here]

## Unit 4: System Privilege Boundaries and Root Delegation
**Location:** `/home/viora/cybersecurity-portfolio/01-linux-fundamentals/lab-01-filesystem-automation`

### 1. Architectural Concept
The Linux operating system separates administrative configurations from normal operations. Standard user accounts are blocked from accessing root space to maintain system security and prevent accidental modifications.

### 2. Privilege Command Mechanics
- \`sudo\`: Delegates administrative access on a per-command basis without changing the active user environment.
- \`Permission Denied\`: The standard kernel security response when an unauthorized process attempts to read or write outside its user boundary.

### 3. Verified System Execution Log
```text
echo "Testing privilege levels" > /etc/viora_test.conf
bash: /etc/viora_test.conf: Permission denied

sudo sh -c 'echo "Testing privilege levels" > /etc/viora_test.conf'
INTERFACE_TYPE=ethernet
DEVICE_NAME=viora-workstation
IP_SEGMENT=10.20.0.0/16
