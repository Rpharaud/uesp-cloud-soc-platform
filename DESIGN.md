# DESIGN

## Purpose

This document defines the initial architecture and design direction for the UESP Cloud SOC Platform.

The design goal is to keep the system lightweight, understandable, testable, and expandable.

---

## Design Principles

This project follows these principles:

- Clarity over complexity
- Documentation before deployment
- Minimal tooling at first
- One project, one primary competency
- Test every major implementation
- Preserve evidence
- Prefer reproducible configurations

---

## High-Level Architecture

```mermaid
flowchart TD
    A[AWS Environment] --> B[CloudTrail]
    A --> C[GuardDuty]
    A --> D[Security Hub]

    E[Linux Security VM] --> F[Zeek]
    E --> G[Suricata]
    E --> H[Wazuh]

    B --> I[Telemetry Collection Layer]
    C --> I
    D --> I
    F --> I
    G --> I
    H --> I

    I --> J[Detection Engineering Layer]
    J --> K[Alerts and Findings]
    K --> L[Investigation and Incident Response]

    J --> M[MITRE ATT&CK Mapping]
    L --> N[Evidence Collection]