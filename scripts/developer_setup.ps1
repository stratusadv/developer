#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

$scripts = @(
    "install_docker_desktop.ps1",
    "install_pycharm.ps1",
    "install_teams.ps1",
    "install_office_365.ps1"
)

$baseUrl = "https://raw.githubusercontent.com/stratusadv/developer/main/scripts"

foreach ($script in $scripts) {
    $localPath = Join-Path $PSScriptRoot $script
    if (Test-Path $localPath) {
        & $localPath
    }
    else {
        Invoke-RestMethod -Uri "$baseUrl/$script" | Invoke-Expression
    }
}

Write-Host "`nAll scripts completed successfully!" -ForegroundColor Green
