#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing PyCharm Professional..." -ForegroundColor Cyan

try {
    winget install -e --id JetBrains.PyCharm.Professional --accept-source-agreements --accept-package-agreements
    Write-Host "PyCharm Professional installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install PyCharm Professional: $_" -ForegroundColor Red
    exit 1
}
