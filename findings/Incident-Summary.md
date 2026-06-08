# Incident Summary

## Incident Title

Authentication Activity Investigation

---

## Executive Summary

Windows Security Event Logs were analyzed to identify authentication-related activities and potential security concerns.

The investigation focused on successful and failed logon events recorded within the Security log.

Analysis identified multiple failed authentication attempts followed by successful authentication activity.

---

## Timeline

| Time | Event ID | Description |
|--------|----------|-------------|
| 18:12:41 | 4625 | Failed Logon |
| 18:12:44 | 4625 | Failed Logon |
| 18:12:45 | 4625 | Failed Logon |
| 18:13:26 | 4624 | Successful Logon |

---

## Investigation Results

No evidence of:

- Account compromise
- Malware activity
- Privilege escalation

was identified.

The observed activity was determined to be expected behavior within the lab environment.

---

## Risk Rating

Low

---

## MITRE ATT&CK Mapping

- T1110 – Brute Force
- T1110.001 – Password Guessing
- T1078 – Valid Accounts

---

## Recommendations

- Implement Multi-Factor Authentication
- Enforce Strong Password Policies
- Monitor Failed Authentication Attempts
- Configure Security Alerting
- Centralize Logs into a SIEM Platform

---

## Conclusion

The investigation successfully demonstrated Windows Security Log analysis, authentication event investigation, event correlation, and MITRE ATT&CK mapping using SOC analyst methodologies.
