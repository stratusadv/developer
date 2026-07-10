#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing Docker Desktop..." -ForegroundColor Cyan

winget list --id "Docker.DockerDesktop" | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Docker Desktop already installed. Skipping." -ForegroundColor Yellow
    return
}

try {
    winget install -e --id Docker.DockerDesktop --accept-source-agreements --accept-package-agreements
    Write-Host "Docker Desktop installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install Docker Desktop: $_" -ForegroundColor Red
    exit 1
}
