# UESP Network Architecture

## Security Objectives

- Minimize attack surface
- Enforce least privilege
- Separate application and data tiers
- Reduce lateral movement opportunities
- Support future telemetry growth
- Support future multi-AZ expansion
- Protect sensitive platform data

## VPC

Utilizing 10.0.0.0/16 being that it's simple, scalable, and future proofed.

## Subnets

10.0.1.0/24 Public
10.0.2.0/24 Private-App
10.0.3.0/24 Private-Data

### Public Subnet

Contains:
    - NAT Gateway
    - Load Balancer
    - Bastion (if operationally required)
Trust Level: Low

### Private-App Subnet

Contains:
    - Application Services
    - API Services
    - Telemetry Processors
    - Collectors
Trust Level: Medium

### Private-Data Subnet

Contains:
    - OpenSearch
    - Databases
    - Future Data Stores
Trust Level: High

## Initial Trust Boundaries

Internet
    |
    v
Public Subnet
    |
    v
Private-App
    |
    v
Private-Data

Every hop represents:
    - Reduced Trust
    - Additional Controls
    - Reduced Exposure

## Future Expansion

Future architectural growth may include:

- Additional private application subnets
- Dedicated management subnet
- Multi-AZ deployment strategy
- Separate telemetry ingestion subnet
- SOAR infrastructure
- Threat intelligence services
- Additional VPC peering requirements
