# Windows Security Event ID Reference

## Authentication Events

### Event ID 4624

#### Description
An account was successfully logged on.

#### Importance
Indicates successful authentication activity.

#### Analyst Use
- Verify user access
- Investigate suspicious logins
- Track account activity

---

### Event ID 4625

#### Description
An account failed to log on.

#### Importance
Indicates unsuccessful authentication attempts.

#### Analyst Use
- Detect brute-force attacks
- Detect password guessing attempts
- Identify unauthorized access attempts

---

### Event ID 4798

#### Description
A user's local group membership was enumerated.

#### Importance
Can indicate reconnaissance activity.

#### Analyst Use
- Monitor account discovery
- Detect internal reconnaissance

---

## Security Monitoring Recommendations

Monitor excessive occurrences of:

- Event ID 4625
- Event ID 4624 after repeated failures
- Account management events
- Privileged account activities

These events can indicate malicious activity requiring investigation.
