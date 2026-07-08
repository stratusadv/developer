# Scripts

Scripts for developers to install applications

## Available Scripts

| Script                       | Description                                               |
|------------------------------|-----------------------------------------------------------|
| `install_pycharm.ps1`        | Installs PyCharm Professional                             |
| `install_docker_desktop.ps1` | Installs Docker Desktop                                   |
| `install_office_365.ps1`     | Installs Microsoft Office                                 |
| `install_teams.ps1`          | Installs Microsoft Teams                                  |
| `developer_setup.ps1`        | Installs PyCharm Pro, Docker Desktop, MS Office, MS Teams |

## How to Run

- Make sure to run Powershell as an administrator

Powershell Command:
```
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/stratusadv/developer/main/scripts/<script-name>.ps1" | Invoke-Expression
```

Example:
```
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/stratusadv/developer/main/scripts/developer_setup.ps1" | Invoke-Expression
```
