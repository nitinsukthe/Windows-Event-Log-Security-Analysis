/*
=========================================================
Project: Windows Event Log Security Analysis Lab
Author: Nitin Sukthe
Purpose: Security Event Investigation Using Log Parser Studio
MITRE ATT&CK Mapping Included
=========================================================
*/


/* =====================================================
Query 1: Successful Logon Events
Event ID 4624
MITRE ATT&CK: T1078 - Valid Accounts
===================================================== */

SELECT
    TimeGenerated,
    EventID,
    EXTRACT_TOKEN(Strings, 5, '|') AS AccountName
FROM Security
WHERE EventID = 4624
ORDER BY TimeGenerated DESC;


/* =====================================================
Query 2: Failed Logon Events
Event ID 4625
MITRE ATT&CK: T1110 - Brute Force
MITRE ATT&CK: T1110.001 - Password Guessing
===================================================== */

SELECT
    TimeGenerated,
    EventID,
    EXTRACT_TOKEN(Strings, 5, '|') AS AccountName
FROM Security
WHERE EventID = 4625
ORDER BY TimeGenerated DESC;


/* =====================================================
Query 3: Count Failed Logon Attempts
MITRE ATT&CK: T1110
===================================================== */

SELECT
    EventID,
    COUNT(*) AS FailedLogonCount
FROM Security
WHERE EventID = 4625
GROUP BY EventID;


/* =====================================================
Query 4: Top Authentication Events
Purpose: Identify Most Frequent Authentication Events
===================================================== */

SELECT
    EventID,
    COUNT(*) AS EventCount
FROM Security
WHERE EventID IN (4624;4625)
GROUP BY EventID
ORDER BY EventCount DESC;


/* =====================================================
Query 5: Authentication Timeline Analysis
Purpose: Create Authentication Activity Timeline
MITRE ATT&CK:
T1110
T1110.001
T1078
===================================================== */

SELECT
    TimeGenerated,
    EventID
FROM Security
WHERE EventID IN (4624;4625)
ORDER BY TimeGenerated DESC;


/* =====================================================
Query 6: Failed Logons by Hour
Purpose: Identify Authentication Spikes
MITRE ATT&CK: T1110
===================================================== */

SELECT
    TO_STRING(TimeGenerated,'yyyy-MM-dd HH') AS LogonHour,
    COUNT(*) AS FailedAttempts
FROM Security
WHERE EventID = 4625
GROUP BY LogonHour
ORDER BY FailedAttempts DESC;


/* =====================================================
Query 7: User Account Enumeration Events
Event ID 4798
MITRE ATT&CK: T1087 - Account Discovery
===================================================== */

SELECT
    TimeGenerated,
    EventID
FROM Security
WHERE EventID = 4798
ORDER BY TimeGenerated DESC;


/* =====================================================
Query 8: Security Events Related to User Accounts
Purpose: Monitor Account Activity
MITRE ATT&CK: T1078
===================================================== */

SELECT
    TimeGenerated,
    EventID
FROM Security
WHERE EventID IN (4624;4625;4798)
ORDER BY TimeGenerated DESC;


/* =====================================================
Query 9: Authentication Investigation Summary
Purpose: SOC Analyst Investigation View
MITRE ATT&CK:
T1110 - Brute Force
T1110.001 - Password Guessing
T1078 - Valid Accounts
===================================================== */

SELECT
    EventID,
    COUNT(*) AS EventCount
FROM Security
WHERE EventID IN (4624;4625)
GROUP BY EventID
ORDER BY EventID;


/* =====================================================
Query 10: Security Monitoring Dashboard Query
Purpose: High-Level Authentication Monitoring
===================================================== */

SELECT
    EventID,
    COUNT(*) AS TotalEvents
FROM Security
GROUP BY EventID
ORDER BY TotalEvents DESC;
