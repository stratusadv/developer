#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing Microsoft 365 Package..." -ForegroundColor Cyan

$installed = winget list --id Microsoft.Office
if ($installed) {
    Write-Host "Microsoft 365 already installed. Skipping." -ForegroundColor Yellow
    exit 0
}

try {
    winget install -e --id Microsoft.Office --accept-source-agreements --accept-package-agreements
    Write-Host "Microsoft 365 Package installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install Microsoft 365 Package: $_" -ForegroundColor Red
    exit 1
}
