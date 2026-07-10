#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing Microsoft Teams..." -ForegroundColor Cyan

winget list --id "Microsoft.Teams" | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Microsoft Teams already installed. Skipping." -ForegroundColor Yellow
    return
}

try {
    winget install -e --id Microsoft.Teams --accept-source-agreements --accept-package-agreements
    Write-Host "Microsoft Teams installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install Microsoft Teams: $_" -ForegroundColor Red
    exit 1
}
