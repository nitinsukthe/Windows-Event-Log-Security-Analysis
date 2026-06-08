# Investigation Workflow

## Scenario

Windows Security Event Logs were analyzed to investigate authentication-related activities.

---

## Step 1: Access Event Logs

Opened Windows Event Viewer and reviewed:

- System Logs
- Security Logs

---

## Step 2: Review Security Events

Navigated to:

Windows Logs → Security

Reviewed authentication events.

---

## Step 3: Filter Event ID 4624

Filtered logs for:

Event ID: 4624

Purpose:

- Identify successful logons
- Validate user authentication activity

---

## Step 4: Filter Event ID 4625

Filtered logs for:

Event ID: 4625

Purpose:

- Investigate failed authentication attempts
- Detect suspicious login activity

---

## Step 5: Analyze Event Details

Reviewed:

- Account Name
- Failure Reason
- Status Code
- Logon Type
- Timestamp

---

## Step 6: Event Correlation

Correlated:

4625 → Failed Logon
4625 → Failed Logon
4625 → Failed Logon
4624 → Successful Logon

This sequence indicates multiple authentication failures followed by successful authentication.

---

## Step 7: Risk Assessment

Observed activity was determined to be low risk within the controlled lab environment.

No evidence of:

- Privilege Escalation
- Malware Execution
- Account Compromise

was identified.

---

## Step 8: Documentation

Documented findings and mapped observed behavior to MITRE ATT&CK techniques.
