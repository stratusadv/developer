#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

$scripts = @(
    "install_docker_desktop.ps1",
    "install_pycharm.ps1",
    "install_teams.ps1",
    "install_office_365.ps1"
)

$baseUrl = "https://raw.githubusercontent.com/stratusadv/developer/main/scripts"

$isRemote = [string]::IsNullOrEmpty($PSScriptRoot)

foreach ($script in $scripts) {
    if ($isRemote) {
        Invoke-RestMethod -Uri "$baseUrl/$script" | Invoke-Expression
    }
    else {
        & (Join-Path $PSScriptRoot $script)
    }
}

Write-Host "`nAll scripts completed successfully!" -ForegroundColor Green