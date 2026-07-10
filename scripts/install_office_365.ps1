#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing Microsoft 365..." -ForegroundColor Cyan

winget list --id "Microsoft.Office" | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Microsoft 365 already installed. Skipping." -ForegroundColor Yellow
    return
}

Write-Host "Note: This requires Microsoft account sign-in, and needs an M365 license to activate." -ForegroundColor Yellow

$response = Read-Host "Install Microsoft 365? (Y/N) [Y]"

if ($response -ieq 'N') {
    Write-Host "Skipping Microsoft 365." -ForegroundColor Yellow
    return
}

Write-Host "Installing Microsoft 365 Package..." -ForegroundColor Cyan

try {
    winget install -e --id Microsoft.Office --accept-source-agreements --accept-package-agreements
    Write-Host "Microsoft 365 Package installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install Microsoft 365 Package: $_" -ForegroundColor Red
    exit 1
}