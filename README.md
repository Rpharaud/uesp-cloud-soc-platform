# UESP Cloud SOC Platform

## Overview

The **UESP Cloud SOC Platform** is Project 1 within the Unified Enterprise Security Portfolio. This project is designed to build a lightweight, cloud-aware Security Operations Center environment focused on telemetry collection, detection engineering, cloud monitoring, incident response, and validation testing.

The goal is not to install as many tools as possible. The goal is to design, build, test, and document a security monitoring platform that demonstrates real-world SOC engineering and cloud security fundamentals.

---

## Project Objectives

This project will focus on:

- Collecting and centralizing security telemetry
- Monitoring AWS cloud activity
- Building and validating detections
- Practicing incident response workflows
- Mapping detections to MITRE ATT&CK
- Testing edge cases and failure scenarios
- Producing portfolio-ready documentation and evidence

---

## Certification Alignment

This project supports practical learning for:

- CompTIA CySA+
- AWS Certified Security – Specialty
- CISSP

---

## Core Technologies

Planned technologies include:

- AWS CloudTrail
- AWS GuardDuty
- AWS Security Hub
- Wazuh
- Zeek
- Suricata
- Falco
- Sigma
- Linux logging
- Python scripting

---

## Current Phase

## Phase 0 — Planning, Architecture, and Engineering Foundation

Current focus:

- Repository structure
- Documentation framework
- Initial architecture design
- Testing methodology
- Controlled project scope

---

## High-Level Architecture

```mermaid
flowchart TD
    A[AWS Environment] --> B[CloudTrail]
    A --> C[GuardDuty]
    A --> D[Security Hub]

    E[Linux Security VM] --> F[Zeek]
    E --> G[Suricata]
    E --> H[Wazuh Agent/Server]

    B --> I[Telemetry Collection Layer]
    C --> I
    D --> I
    F --> I
    G --> I
    H --> I

    I --> J[Detection Engineering Layer]
    J --> K[Alerts & Findings]
    K --> L[Investigation & Incident Response]

    J --> M[MITRE ATT&CK Mapping]
    L --> N[Evidence Collection]
