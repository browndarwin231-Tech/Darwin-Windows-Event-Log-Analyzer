# Darwin Windows Event Log Analyzer

A beginner-friendly SOC analyst PowerShell project that analyzes Windows Security Event Logs.

The script searches the Windows Security log for common authentication events used by SOC analysts during investigations.

---

## Features

- Detects failed login events (4625)
- Detects successful logins (4624)
- Detects account lockouts (4740)
- Displays recent failed login events
- Generates security alerts

---

## Technologies

- PowerShell
- Windows Event Logs

---

## Event IDs

| Event ID | Description |
|----------|-------------|
|4625|Failed Login|
|4624|Successful Login|
|4740|Account Lockout|

---

## Example Output

```
=== Darwin Windows Event Log Analyzer ===

Failed Login Events Found: 4
Successful Login Events Found: 12
Account Lockout Events Found: 1

[HIGH ALERT] Multiple failed login events detected.
```

---

## Skills Demonstrated

- PowerShell
- Windows Security Logs
- Event Log Analysis
- Authentication Monitoring
- SOC Analyst Fundamentals
- Windows Administration

---

## Future Improvements

- Export results to CSV
- Generate HTML reports
- Search custom date ranges
- Email security alerts
- Interactive menu
- Detect brute-force attacks

---

Created by

**Darwin Brown Jr.**
