# Telemetry Architecture

## Purpose

This document defines the telemetry architecture for the Unified Enterprise SOC Platform
(UESP).

The objective of telemetry collection is to provide visibility into network, cloud,
application, and security-relevant activity across the platform.

Telemetry supports:

- Detection engineering
- Threat hunting
- Incident response
- Security analytics
- Correlation
- Forensics
- Evidence collection
- Future SIEM and SOAR integrations

## Telemetry Architecture Philosophy

UESP follows a layered telemetry architecture consisting of:

1. Telemetry producers
2. Telemetry transport
3. Telemetry storage and analytics
4. Detection and response

This separation improves:

- Scalability
- Maintainability
- Portability
- Operational resilience
- Technology flexibility

## Telemetry Producers

Telemetry producers generate security-relevant data.

### Zeek

Zeek provides protocol-aware network metadata and behavioral visibility.

Initial logs include:

- `conn.log`
- `dns.log`
- `http.log`
- `ssl.log`
- `files.log`
- `weird.log`
- `notice.log`

Primary value:

- Session visibility
- Protocol analysis
- Behavioral monitoring
- Threat hunting context

### Suricata

Suricata provides network intrusion detection and packet inspection.

Initial outputs include:

- `eve.json`
- `fast.log`
- Alerts
- Flow records
- HTTP metadata
- TLS metadata
- DNS metadata

Primary value:

- Signature-based detection
- Protocol inspection
- Alert generation
- Threat identification

### AWS VPC Flow Logs

VPC Flow Logs provide cloud network traffic metadata.

Primary value:

- Source and destination tracking
- Accepted and rejected traffic visibility
- Cloud network investigations
- Security analytics

### Future Cloud Telemetry

Potential future telemetry sources include:

- CloudTrail
- GuardDuty
- Security Hub
- Route 53 DNS logs
- Load balancer logs
- S3 access logs

### Future Application Telemetry

Potential future telemetry sources include:

- Application logs
- API Gateway logs
- Authentication logs
- Audit logs
- Custom security events

## Telemetry Transport Layer

The transport layer moves telemetry from producers to storage and analytics platforms.

Potential transport technologies include:

- Filebeat
- Logstash
- Fluent Bit
- Fluentd
- Native AWS integrations

Primary objectives:

- Reliable delivery
- Data normalization
- Data enrichment
- Operational resilience
- Pipeline observability

## Telemetry Storage and Analytics Layer

The storage and analytics layer provides retention, search, investigation, and
analytics capabilities.

### OpenSearch and Elasticsearch

Primary functions:

- Log indexing
- Search
- Dashboards
- Analytics
- Correlation
- Detection support

Potential future use cases:

- SIEM functionality
- Threat hunting
- Alert enrichment
- Operational reporting

### Arkime

Arkime provides packet indexing and session analysis capabilities.

Primary functions:

- PCAP indexing
- Session reconstruction
- Network investigations
- Threat hunting
- Analyst workflows

Primary value:

- Deep network visibility
- Historical investigation support
- Network forensics

### Future Analytics Platforms

Potential future platforms include:

- SIEM integrations
- Data lakes
- Detection analytics engines
- Machine learning analytics
- UEBA-style analytics

## Optional Reference Platforms

### Malcolm

Malcolm is an integrated network security monitoring platform combining:

- Zeek
- Suricata
- Arkime
- OpenSearch
- Dashboards
- PCAP analysis

UESP may leverage Malcolm as:

- A reference architecture
- A comparison platform
- A local analysis environment
- A testing environment

UESP is not dependent on Malcolm and remains architecturally modular.

## Telemetry Flow

```text
Network activity
    |
    v
Cloud activity
    |
    v
Application activity
    |
    v
Telemetry producers
    |
    v
Telemetry transport layer
    |
    v
Storage and analytics layer
    |
    v
Detection engineering
    |
    v
Threat hunting, incident response, investigation, and automation
