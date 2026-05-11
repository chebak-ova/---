# 🔐 Cyber Resilience Platform for Critical Oil Logistics

> A comprehensive IT solution ensuring business continuity of oil product shipment processes under advanced cyber threats

---

## 🎯 Problem Statement

Traditional security measures (air-gaps, physical isolation) are insufficient in today's converged IT/OT environments. Critical logistics processes like oil product shipment face direct risks from sophisticated cyberattacks:

| Risk Category | Impact |
|--------------|--------|
| 💰 Financial | Downtime costs: **millions of RUB/hour** |
| 📉 Reputational | Contract breaches, loss of trusted-partner status |
| 🌍 Environmental | Valve miscontrol → spills, pipeline ruptures |
| ⚠️ Safety | Targeted attacks on control systems → equipment damage |

**Key pain points**: IT/OT convergence attack surfaces, legacy SCADA/PLC vulnerabilities, lack of end-to-end visibility, human factor risks.

---

## 💡 Solution Overview

A defense-in-depth platform built on **cyber resilience principles** — designed not only to protect, but to ensure rapid recovery and business continuity even after a successful attack.

### 🏗️ Architecture Components
flowchart TD
    A["1. Network Microsegmentation\n• DMZ between IT/OT\n• Segmentation by node\n• Lateral movement prevention"] 
    --> B["2. OT-aware IDS/IPS\n• Protocol parsing: Modbus, OPC UA\n• Real-time anomaly detection\n• Signature + behavioral analysis"]
    --> C["3. SIEM with OT Support\n• Centralized event correlation\n• Multi-vector attack detection\n• Automated alerting"]
    --> D["4. Vulnerability Management\n• CVE scanning + prioritization\n• Asset criticality mapping"]
    --> E["5. Backup & Disaster Recovery\n• WORM storage for configs\n• Automated recovery playbooks\n• RTO/RPO compliance"]

    classDef layer fill:#e3f2fd,stroke:#1565c0,stroke-width:2px;
    class A,B,C,D,E layer;

---

## 📊 Key Performance Indicators (KPIs)

| Metric | Before | After | Improvement |
|--------|--------|-------|-------------|
| **Avg. Downtime** (hrs/month) | 12.5 | 4.2 | **↓ 66%** |
| **Incident Cost** (M RUB/year) | 45.6 | 15.3 | **↓ 66%** |
| **MTTR** (hours) | 8.3 | 2.1 | **↓ 75%** |
| **Critical Assets Monitored** | ~40% | ~95% | **↑ 2.4×** |

### 💰 Investment Analysis (CAPEX: 101.6M RUB)
- **NPV** = 22.9M RUB
- **IRR** = 20%
- **Payback Period** = 7 years

> ✅ Positive NPV and IRR > WACC confirm economic feasibility.

---

## 🛠️ Tech Stack & Standards

| Category | Technologies / Standards |
|----------|-------------------------|
| **Protocols** | Modbus TCP, OPC UA, MQTT, TLS/SSL |
| **Security** | OT-aware IDS/IPS, SIEM, WORM storage, RBAC |
| **Frameworks** | ISA/IEC 62443, NIST SP 800-82, FSTEC requirements |
| **Integration** | REST API Gateway, ERP/TMS connectors |
| **Deployment** | On-premise / hybrid cloud, Docker-ready |

---

## 🚀 Quick Start (Conceptual)

```bash
# 1. Clone repository
git clone https://github.com/chebak-ova/cyber-resilience-oil.git
cd cyber-resilience-oil

# 2. Review architecture diagrams
open docs/architecture/

# 3. Explore policy templates
cat policies/incident-response.md

# 4. Run simulation (if available)
python simulate_attack_scenario.py
