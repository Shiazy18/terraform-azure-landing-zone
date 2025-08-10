# terraform-azure-landing-zone

## What is an Azure Landing Zone?

A Landing Zone is a foundational cloud environment for hosting workloads in Azure, built with:

- Security
- Networking
- Governance
- Identity
- Monitoring
- Scalability

Think of it as a production-grade baseline to deploy enterprise apps securely and repeatedly.

---

## Architecture

- Networking (Hub & Spoke VNETs)
- Management Resources (Log Analytics, Recovery Vaults, Monitor)
- Security & Governance (NSGs, Policies, Key Vault)
- Shared Services (Bastion, DNS, Jumpboxes)

---

## HLD

```css

┌────────────────────────────────────────────┐
│         Subscription (Landing Zone)        │
└────────────────────────────────────────────┘
                  │
     ┌────────────┴────────────┐
     ▼                         ▼
[Hub VNET]                 [Spoke VNET(s)]
  - Shared resources         - Workloads (e.g., App, DB)
  - Bastion, VPN             - AKS, VMs, PaaS
  - Firewall, NAT Gateway    - Segmented by tier/env
     │                         │
     ▼                         ▼
[Log Analytics]         [NSGs / Route Tables]
[Key Vault]             [Private Endpoints]
[Azure Monitor]         [Service Endpoints]

```
