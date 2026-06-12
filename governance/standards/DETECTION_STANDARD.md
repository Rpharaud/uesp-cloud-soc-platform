# Detection Engineering Standard

## Purpose

This document defines the detection engineering standards for the Unified Enterprise SOC Platform (UESP).

The objective of this standard is to ensure:

- Consistency
- Operational maintainability
- Detection portability
- Validation integrity
- Governance alignment
- Scalable detection lifecycle management

## Detection Engineering Philosophy

UESP adopts a layered detection engineering strategy combining:

- Signature-based detection
- Behavioral detection
- Correlation-based analytics
- Threat intelligence enrichment
- Context-aware risk scoring

The platform is designed to support both traditional detection methods and modern behavioral analytics workflows.

UESP detections should prioritize:

- High signal-to-noise ratio
- Operational usefulness
- Analyst readability
- False positive reduction
- Reproducibility
- Evidence-driven validation

## Detection Classification Model

UESP detections are classified across three independent dimensions:

1. Detection Engine
2. Detection Domain
3. Detection Methodology

This layered taxonomy prevents classification ambiguity and supports scalable operational management.

## Detection Engines

Detection engines define the underlying technology or framework implementing the detection logic.

Supported detection engines include:

- Sigma
- Suricata
- Zeek
- YARA
- Correlation
- Custom Python Analytics
- SOAR Automations

## Detection Domains

Detection domains define the operational area or telemetry source being monitored.

Supported detection domains include:

- Network
- Endpoint
- Identity
- Cloud
- API
- Threat Intelligence
- Web3
- Email
- Infrastructure
- DNS
- Authentication
- Container/Kubernetes

## Detection Methodologies

Detection methodologies define how the detection identifies suspicious or malicious activity.

Supported methodologies include:

- Signature-based
- Behavioral
- Heuristic
- Correlation-based
- Threat Intelligence-based
- Statistical/Anomaly-based
- Risk-based Scoring

## Detection Lifecycle

All detections within UESP follow a standardized lifecycle model.

## Lifecycle Stages

1. Design
2. Development
3. Validation
4. Tuning
5. Deployment
6. Monitoring
7. Retirement

## Design Phase

The design phase defines:

- Detection objective
- Threat hypothesis
- Required telemetry
- ATT&CK mapping
- Operational use case
- Expected analyst workflow

## Development Phase

The development phase includes:

- Detection implementation
- Metadata creation
- Rule logic construction
- Initial test case development

## Validation Phase

All detections must undergo validation prior to operational deployment.

Validation requirements include:

- Telemetry verification
- Positive test validation
- False positive analysis
- Detection logic verification
- Evidence collection
- Environmental compatibility testing

## Tuning Phase

Detections must be tuned to reduce operational noise and improve analyst usability.

Tuning considerations include:

- False positive reduction
- Threshold refinement
- Environmental baselining
- Alert suppression logic
- Noise reduction
- Contextual enrichment improvements

## Deployment Phase

Deployment includes:

- Production readiness review
- Documentation verification
- CI validation checks
- Version control tracking
- Operational approval

## Monitoring Phase

Deployed detections must be continuously monitored for:

- Detection effectiveness
- Alert fidelity
- Telemetry drift
- Environmental changes
- Threat evolution
- Analyst feedback

## Retirement Phase

Detections may be retired when:

- Telemetry becomes deprecated
- Detection logic becomes obsolete
- Threat relevance diminishes
- Superior detections replace existing logic
- Operational maintenance becomes unsustainable

Retired detections should remain archived for historical reference and audit purposes.

## Required Detection Metadata

All detections should include standardized metadata where applicable.

Required metadata fields include:

- Title
- Unique Identifier
- Status
- Description
- Author
- Creation Date
- Detection Engine
- Detection Domain
- Detection Methodology
- Severity Level
- ATT&CK Mapping
- Telemetry Source
- False Positive Considerations
- Validation Guidance
- References

## Severity Classification

| Severity | Description |
| --- | --- |
| Critical | Active exploitation, severe compromise, or immediate operational impact |
| High | Strong indicators of malicious activity requiring urgent investigation |
| Medium | Suspicious activity requiring analyst review |
| Low | Low-confidence or informational findings |
| Informational | Non-malicious operational visibility or baseline telemetry |

## Detection Validation Philosophy

UESP prioritizes evidence-driven detection validation.

Detections should not be considered production-ready solely because they generate alerts.

Production-ready detections must demonstrate:

- Reliable telemetry coverage
- Reproducible detection behavior
- Acceptable false positive rates
- Operational usefulness
- Analyst interpretability
- Documented validation evidence

## Detection Evidence Requirements

Detection evidence may include:

- PCAP samples
- Zeek logs
- Suricata alerts
- Screenshots
- Validation reports
- Test scenarios
- Detection output artifacts

Evidence artifacts should be stored within the UESP evidence framework.

## ATT&CK Mapping Guidance

Where applicable, detections should map to:

- MITRE ATT&CK tactics
- MITRE ATT&CK techniques
- Relevant adversary behaviors
- Threat actor tradecraft patterns

ATT&CK mappings should support:

- Threat-informed defense
- Coverage analysis
- Detection gap identification
- Reporting and metrics

## Governance and Change Control

All detection changes must be:

- Version controlled
- Reviewed prior to deployment
- Validated through CI/CD workflows
- Documented appropriately
- Traceable through commit history

Detection modifications impacting operational behavior should include updated validation evidence.

## Future Expansion Areas

Future UESP detection engineering enhancements may include:

- Machine learning-assisted detections
- Adaptive behavioral baselining
- Dynamic risk scoring
- Automated enrichment pipelines
- SOAR-assisted correlation
- Multi-cloud telemetry analytics
- Threat hunting integration
- UEBA-style analytics
