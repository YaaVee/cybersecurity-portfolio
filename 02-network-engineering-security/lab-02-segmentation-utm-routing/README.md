# Lab 2.1: Network Engineering & Custom Netfilter Hardening
**Location:** `/home/viora/cybersecurity-portfolio/02-network-engineering-security/lab-02-segmentation-utm-routing`

## 1. Objective
To design network zone segmentation rules and implement strict Netfilter boundary defense policies to protect critical backend infrastructure components.

## 2. Defensive Strategies Applied
- Connection State Tracking: Restricting entry criteria exclusively to `RELATED,ESTABLISHED` traffic streams.
- Zero-Trust Ingress Controls: Drops unauthorized external packets targeting sensitive services on ports 5432, 27017, 6379, and 6443.
