# SECAR Detection Engineering Standard

> **Build Like an Engineer. Think Like an Architect.**

---

## Purpose

The **Detection Engineering Standard** establishes the engineering principles, documentation requirements, quality expectations, and lifecycle for all detection content developed throughout the Security Engineering & Cloud Architecture Residency (SECAR).

This standard applies to every detection artifact regardless of implementation technology, including but not limited to Sigma, Suricata, Zeek, YARA, SIEM analytics, cloud-native detections, and custom detection logic.

The objective is to produce high-quality, maintainable, testable, and portfolio-worthy detection content that demonstrates professional engineering practices.

---

## Scope

This standard applies to all detection engineering activities performed within SECAR, including:

* Detection Rules
* Detection Logic
* SIEM Analytics
* IDS/IPS Signatures
* Threat Hunting Analytics
* Behavioral Analytics
* Cloud Security Detections
* IOC-Based Detections
* Custom Detection Scripts

---

## Guiding Principles

Every detection should:

* Detect meaningful malicious or suspicious activity.
* Minimize false positives.
* Be understandable by another engineer.
* Be documented.
* Be version controlled.
* Be tested before production use.
* Be maintainable.
* Produce measurable security value.

---

## Detection Lifecycle

Every detection follows the lifecycle below.

| Status     | Description                  |
| ---------- | ---------------------------- |
| Proposed   | Detection idea identified    |
| Developing | Detection under development  |
| Testing    | Validation in progress       |
| Active     | Detection deployed           |
| Tuning     | Improving detection fidelity |
| Deprecated | Detection retired            |

---

## Detection Development Process

Every detection should progress through the following stages:

1. Threat Identification
2. Detection Design
3. Rule Development
4. Testing
5. Validation
6. Deployment
7. Monitoring
8. Tuning
9. Retirement

---

## Detection Requirements

Every detection should include:

* Unique identifier
* Descriptive title
* Purpose
* Threat description
* Detection logic
* Trigger conditions
* Severity
* Confidence
* Data sources
* Author
* Version
* Date created
* Last updated

---

## Severity Classification

| Severity      | Description                                         |
| ------------- | --------------------------------------------------- |
| Informational | Security-relevant activity requiring awareness only |
| Low           | Low-impact suspicious activity                      |
| Medium        | Activity requiring analyst investigation            |
| High          | High-confidence malicious activity                  |
| Critical      | Immediate response required                         |

---

## Confidence Classification

| Confidence | Description                 |
| ---------- | --------------------------- |
| Low        | Weak evidence               |
| Medium     | Moderate confidence         |
| High       | Strong evidence             |
| Very High  | Verified malicious behavior |

---

## Data Source Requirements

Every detection shall identify its required telemetry.

Examples include:

* Operating System Logs
* Authentication Logs
* Network Traffic
* DNS
* HTTP
* Proxy Logs
* Endpoint Telemetry
* Cloud Audit Logs
* Kubernetes Audit Logs
* Identity Provider Logs
* Application Logs

---

## MITRE ATT&CK Mapping

When applicable, detections should be mapped to:

* Tactic
* Technique
* Sub-technique

Mappings should reflect the observed behavior rather than assumptions.

---

## Detection Quality Expectations

Every detection should strive to be:

* Accurate
* Actionable
* Explainable
* Efficient
* Maintainable
* Reproducible
* Portable
* Well documented

---

## Testing Requirements

Before activation, detections should be validated using representative test data.

Testing should verify:

* Expected alerts are generated.
* Legitimate activity does not generate excessive false positives.
* Rule syntax is valid.
* Detection performs within acceptable resource limits.
* Supporting documentation is complete.

---

## Detection Performance Metrics

The following metrics should be monitored when practical.

| Metric                     | Description                          |
| -------------------------- | ------------------------------------ |
| True Positives             | Correct detections                   |
| False Positives            | Benign activity incorrectly detected |
| False Negatives            | Missed malicious activity            |
| Detection Coverage         | Threat behaviors detected            |
| Mean Time to Detect (MTTD) | Detection speed                      |
| Rule Execution Performance | Operational efficiency               |

---

## Version Control

Detection content shall:

* Be stored in Git.
* Follow repository naming standards.
* Include meaningful commit messages.
* Maintain revision history.
* Support peer review when applicable.

---

## Documentation Requirements

Every detection should include supporting documentation covering:

* Purpose
* Threat scenario
* Detection logic
* Data sources
* ATT&CK mapping
* Assumptions
* Known limitations
* Testing performed
* Tuning recommendations

---

## Repository Organization

Recommended structure:

```text
detections/
├── sigma/
├── suricata/
├── zeek/
├── yara/
├── cloud/
├── custom/
└── testing/
```

---

## Detection Template

```markdown
## Detection

### Metadata

| Field | Value |
|--------|-------|
| Detection ID | |
| Title | |
| Status | Proposed |
| Author | |
| Version | |
| Date Created | |
| Last Updated | |

---

### Purpose

---

### Threat Description

---

### Detection Logic

---

### Trigger Conditions

---

### Severity

---

### Confidence

---

### Data Sources

-

-

-

---

### MITRE ATT&CK Mapping

| Tactic | Technique | Sub-technique |
|---------|-----------|---------------|

---

### Testing

#### Test Method

-

#### Expected Result

-

#### Actual Result

-

---

### Performance Notes

-

-

-

---

### Known Limitations

-

-

-

---

### Tuning Recommendations

-

-

-

---

## References

-

-

-
```

---

## Definition of Done

A detection is considered complete when:

* Detection logic has been implemented.
* Documentation is complete.
* Testing has been successfully performed.
* Severity and confidence have been assigned.
* Required telemetry has been identified.
* ATT&CK mapping has been completed where applicable.
* Detection has been committed to version control.

---

### Validation Checklist

* [ ] Threat scenario documented
* [ ] Detection logic reviewed
* [ ] Required telemetry verified
* [ ] ATT&CK mapping completed
* [ ] False positives considered
* [ ] Testing completed
* [ ] Documentation completed

## Continuous Improvement

Detection engineering is an iterative process. Existing detections should be reviewed periodically to improve accuracy, expand threat coverage, reduce false positives, and adapt to evolving adversary techniques.

Changes to this standard should be evaluated through the SECAR engineering governance process to ensure continued alignment with modern detection engineering practices.
