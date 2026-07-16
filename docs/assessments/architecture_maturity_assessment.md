# Architecture Maturity Assessment

> **Build Like an Engineer. Think Like an Architect.**

---

## Purpose

The **Architecture Maturity Assessment** provides a periodic evaluation of SECAR's engineering maturity.

Its purpose is to measure the evolution of the residency, identify engineering strengths, highlight areas requiring improvement, and guide future development efforts.

Assessments are performed at major residency milestones rather than every sprint. The objective is not to achieve a perfect score, but to demonstrate continuous engineering growth over the course of the residency.

---

## Maturity Model

SECAR uses a simple five-level maturity model.

| Level | Name       | Description                                                                                                          |
| ----: | ---------- | -------------------------------------------------------------------------------------------------------------------- |
| **1** | Initial    | Ad hoc practices with limited standardization or repeatability.                                                      |
| **2** | Developing | Foundational capabilities exist but require further implementation and consistency.                                  |
| **3** | Defined    | Processes are documented, repeatable, and consistently followed.                                                     |
| **4** | Managed    | Capabilities are measured, monitored, and continuously improved.                                                     |
| **5** | Optimized  | Engineering practices are mature, automated where appropriate, and continually refined through operational feedback. |

---

## Assessment Domains

The residency is evaluated across eight engineering domains.

| Domain                            | Description                                                                        |
| --------------------------------- | ---------------------------------------------------------------------------------- |
| Governance                        | Standards, documentation, risk management, technical debt, engineering governance  |
| Cloud Platform                    | AWS architecture, networking, identity, compute, storage, and cloud infrastructure |
| Security Engineering              | Secure architecture, hardening, IAM, logging, monitoring, and security controls    |
| Detection Engineering             | Detection content, telemetry, analytics, validation, and threat-informed defense   |
| Infrastructure as Code            | Terraform, reusable modules, automation, configuration management                  |
| Platform Engineering & Automation | CI/CD, containers, orchestration, deployment automation, operational tooling       |
| Architecture                      | System design, scalability, resiliency, architectural decision making              |
| Professional Development          | Portfolio, certifications, interview readiness, technical communication            |

---

## Baseline Assessment

**Assessment Date:** 2026-07-14

| Domain                            |   Score   | Current State                                                                                    | Next Milestone                                                              |
| --------------------------------- | :-------: | ------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------- |
| Governance                        | **3 / 5** | Governance foundation established through standards, registers, dashboard, and roadmap.          | Complete Quarterly Design Review and Framework Integration.                 |
| Cloud Platform                    | **2 / 5** | Terraform foundation and architectural planning completed; AWS implementation has not yet begun. | Deploy the initial AWS environment and establish the landing zone.          |
| Security Engineering              | **2 / 5** | Security architecture, trust boundaries, and threat modeling have been documented.               | Implement identity, logging, monitoring, and security controls within AWS.  |
| Detection Engineering             | **2 / 5** | Detection standards and initial detection artifacts exist.                                       | Operationalize detections and validate them with live telemetry.            |
| Infrastructure as Code            | **2 / 5** | Terraform repository structure and foundational modules have been established.                   | Expand reusable infrastructure modules and automate deployments.            |
| Platform Engineering & Automation | **1 / 5** | Platform automation has not yet begun.                                                           | Build CI/CD pipelines and introduce infrastructure automation.              |
| Architecture                      | **2 / 5** | Core architecture documentation has been established.                                            | Begin documenting significant architectural decisions through ADRs.         |
| Professional Development          | **3 / 5** | Strong engineering documentation and portfolio foundation established.                           | Complete Career Evidence Matrix and begin structured interview preparation. |

---

## Overall Assessment

| Metric                 | Value          |
| ---------------------- | -------------- |
| Overall Maturity       | **2.1 / 5**    |
| Current Classification | **Developing** |

### Summary

SECAR has successfully established its engineering governance foundation and architectural planning process. The residency is now transitioning from planning into implementation.

Current strengths include governance, documentation, architectural planning, and engineering organization.

Future maturity growth will primarily be driven through:

* Cloud engineering
* AWS implementation
* Infrastructure automation
* Detection engineering
* Architecture decision records
* Operational experience

The focus for subsequent phases should shift toward engineering execution while maintaining the governance framework established during Sprint 2.1.

---

### Assessment History

| Date       | Assessment          | Overall Score |
| ---------- | ------------------- | :-----------: |
| 2026-07-14 | Baseline Assessment |  **2.1 / 5**  |

---

## Improvement Roadmap

### Priority 1

Complete the remaining Sprint 2.1 deliverables.

* Quarterly Design Review
* Career Evidence Matrix

---

### Priority 2

Begin Sprint 2.2.

* Framework integration
* Framework traceability
* AWS implementation planning

---

### Priority 3

Transition SECAR into engineering execution.

Engineering work should become the primary output of future sprints, with documentation serving as evidence of the work performed rather than the primary deliverable.

---

### Assessment Schedule

The Architecture Maturity Assessment will be updated at the conclusion of each major residency phase.

Planned assessment cadence:

* Baseline Assessment (Sprint 2.1)
* End of Phase 2
* End of Phase 3
* End of Phase 4
* End of Phase 5
* Residency Graduation

This cadence provides meaningful comparisons by evaluating maturity after substantial engineering progress rather than after individual sprints.
