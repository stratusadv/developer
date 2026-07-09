#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

Write-Host "Installing PyCharm Professional..." -ForegroundColor Cyan

winget list --id "JetBrains.PyCharm.Professional" | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Pycharm Professional already installed. Skipping." -ForegroundColor Yellow
    exit 0
}

try {
    winget install -e --id JetBrains.PyCharm.Professional --accept-source-agreements --accept-package-agreements
    Write-Host "PyCharm Professional installed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to install PyCharm Professional: $_" -ForegroundColor Red
    exit 1
}
