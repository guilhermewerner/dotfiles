#!/usr/bin/env pwsh

# Shell

New-Item -Type Directory $home/Documents/PowerShell
Copy-Item ./Config/Microsoft.PowerShell_profile.ps1 $home/Documents/PowerShell
Copy-Item ./Config/starship.toml $home/.config
winget install starship

cargo install --force `
    bat `
    cbindgen `
    du-dust `
    fd-find `
    grex `
    naga-cli `
    procs `
    ripgrep `
    sd `
    tokei `
    wasm-bindgen-cli
