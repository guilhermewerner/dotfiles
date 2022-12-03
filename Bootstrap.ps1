#!/usr/bin/env pwsh

# Shell

New-Item -Type Directory $home/Documents/PowerShell
Copy-Item ./Config/Microsoft.PowerShell_profile.ps1 $home/Documents/PowerShell
New-Item -Type Directory $home/.config
Copy-Item ./Config/starship.toml $home/.config
winget install starship
