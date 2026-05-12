
## `TESTPLAN.md`

```markdown
# TEST PLAN

## Purpose

This document defines how the UESP Cloud SOC Platform will be validated.

The goal is to ensure that implemented controls, detections, and workflows actually function as intended.

---

## Testing Philosophy

Nothing is considered complete until it has been tested, documented, and supported by evidence.

Testing should answer:

- Does it work?
- Does it detect what it should?
- What happens when it fails?
- What edge cases exist?
- What evidence proves success?
- What needs improvement?

---

## Testing Categories

## 1. Functional Testing

Functional testing verifies that expected system behavior works.

Examples:

- CloudTrail records API activity
- GuardDuty produces findings
- Logs are generated successfully
- Alerts appear where expected
- SSH access works
- Documentation matches implementation

---

## 2. Security Testing

Security testing validates whether controls resist misuse or abuse.

Examples:

- Failed login attempts are logged
- Suspicious API calls are detected
- Excessive permissions are identified
- Unauthorized access attempts are visible
- Security findings are generated correctly

---

## 3. Edge-Case Testing

Edge-case testing checks unusual or unexpected conditions.

Examples:

- Missing logs
- Malformed logs
- Delayed telemetry
- Duplicate events
- Disabled logging
- Incorrect timestamps
- Misconfigured permissions

---

## 4. Failure Testing

Failure testing validates how the system behaves when components break.

Examples:

- Logging service interruption
- Agent disconnect
- VM unavailable
- AWS service misconfiguration
- Detection rule failure
- Storage limit reached

---

## 5. Adversarial Testing

Adversarial testing simulates attacker behavior.

Examples:

- Brute-force attempts
- Suspicious IAM activity
- Reconnaissance commands
- Privilege escalation attempts
- Known ATT&CK technique simulations

---

## 6. Recovery Testing

Recovery testing validates restoration after failure.

Examples:

- Restore disabled logging
- Reconnect broken agents
- Recover from bad configuration
- Rotate exposed credentials
- Re-enable detection rules
- Confirm alerting after recovery

---

## Test Case Template

Each test should use the following format:

```markdown
## Test ID

### Objective
What is being tested?

### Category
Functional / Security / Edge Case / Failure / Adversarial / Recovery

### Preconditions
What must exist before the test?

### Procedure
Step-by-step actions.

### Expected Result
What should happen?

### Actual Result
What actually happened?

### Evidence
Screenshots, logs, command output, findings.

### Status
Pass / Fail / Needs Review

### Notes
Lessons learned or follow-up actions.