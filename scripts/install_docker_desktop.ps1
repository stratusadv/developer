#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing Docker Desktop..." -ForegroundColor Cyan

$installed = winget list --id Docker.DockerDesktop
if ($installed) {
    Write-Host "Docker Desktop already installed. Skipping." -ForegroundColor Yellow
    exit 0
}

try {
    winget install -e --id Docker.DockerDesktop --accept-source-agreements --accept-package-agreements
    Write-Host "Docker Desktop installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install Docker Desktop: $_" -ForegroundColor Red
    exit 1
}
