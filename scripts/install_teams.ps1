#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing Microsoft Teams..." -ForegroundColor Cyan

$installed = winget list --id Microsoft.Teams
if ($installed) {
    Write-Host "Microsoft Teams already installed. Skipping." -ForegroundColor Yellow
    exit 0
}

try {
    winget install -e --id Microsoft.Teams --accept-source-agreements --accept-package-agreements
    Write-Host "Microsoft Teams installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install Microsoft Teams: $_" -ForegroundColor Red
    exit 1
}
