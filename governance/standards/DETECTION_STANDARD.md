# Detection Engineering Standard

## Purpose

This document defines the detection engineering standards for UESP.

The objective is to ensure:

- Consistency
- Portability
- Validation integrity
- Governance alignment
- Operational maintainability

## Detection Categories

Supported detection categories include:

- Sigma
- Suricata
- Zeek
- YARA
- Correlation
- Behavioral analytics
- Threat intelligence matching

## Required Detection Metadata

All detections should include:

- Title
- Unique identifier
- Status
- Severity
- Description
- Author
- Log source
- MITRE ATT&CK mappings
- False positive considerations
- Validation guidance

## Severity Classification

| Severity | Description |
| --- | --- |
| Critical | Active exploitation or severe compromise |
| High | Strong malicious indicators |
| Medium | Suspicious activity requiring investigation |
| Low | Informational or low-confidence findings |

## Detection Lifecycle

Detections follow the lifecycle:

1. Design
2. Development
3. Validation
4. Tuning
5. Deployment
6. Monitoring
7. Retirement
