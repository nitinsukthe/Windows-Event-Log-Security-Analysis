# MITRE ATT&CK Mapping

## Overview

Observed authentication-related events were mapped to relevant MITRE ATT&CK techniques.

---

## Technique: Brute Force

### ATT&CK ID

T1110

### Description

Adversaries may attempt to gain access by repeatedly trying passwords against one or more accounts.

### Evidence

Multiple Event ID 4625 entries were identified.

---

## Technique: Password Guessing

### ATT&CK ID

T1110.001

### Description

Adversaries attempt to guess passwords for valid user accounts.

### Evidence

Repeated failed authentication attempts were observed.

---

## Technique: Valid Accounts

### ATT&CK ID

T1078

### Description

Adversaries may use valid credentials to gain access.

### Evidence

A successful Event ID 4624 occurred following authentication attempts.

---

## Detection Opportunities

Monitor:

- Event ID 4625
- Excessive failed logins
- Failed logins followed by successful logins
- Unusual authentication patterns

---

## Security Controls

Recommended controls:

- Multi-Factor Authentication (MFA)
- Account Lockout Policies
- Strong Password Policies
- Security Monitoring and Alerting
- SIEM Integration
