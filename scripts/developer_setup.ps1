#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

$scripts = @(
    "install_docker_desktop.ps1",
    "install_pycharm.ps1",
    "install_teams.ps1",
    "install_office_365.ps1"
)

foreach ($script in $scripts) {
    $script_path = Join-Path $PSScriptRoot $script
    & $script_path
}

Write-Host "`nAll scripts completed successfully!" -ForegroundColor Green
