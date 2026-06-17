Write-Host "=== Darwin Windows Event Log Analyzer ==="
Write-Host ""

$failedLogins = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id = 4625
} -MaxEvents 10 -ErrorAction SilentlyContinue

$successfulLogins = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id = 4624
} -MaxEvents 10 -ErrorAction SilentlyContinue

$accountLockouts = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id = 4740
} -MaxEvents 10 -ErrorAction SilentlyContinue

Write-Host "Failed Login Events Found:" $failedLogins.Count
Write-Host "Successful Login Events Found:" $successfulLogins.Count
Write-Host "Account Lockout Events Found:" $accountLockouts.Count
Write-Host ""

if ($failedLogins.Count -ge 3) {
    Write-Host "[HIGH ALERT] Multiple failed login events detected."
} else {
    Write-Host "[OK] Failed login activity appears normal."
}

Write-Host ""
Write-Host "=== Recent Failed Login Events ==="

foreach ($event in $failedLogins) {
    Write-Host "Time:" $event.TimeCreated
    Write-Host "Event ID:" $event.Id
    Write-Host "Provider:" $event.ProviderName
    Write-Host "-------------------------"
}