#Powershell Prompt`
oh-my-posh init pwsh --config 'C:\Users\Axew\.config\powershell\oh-my-posh-theme\white_arrow.omp.json' | Invoke-Expression

#Changing Neovim Config Directory
$env:XDG_CONFIG_HOME = "$HOME/.config"

# Alias
Set-Alias open explorer
Set-Alias touch New-Item
Set-Alias rm Remove-Item

#Terminal Icons Setup
Import-Module -Name Terminal-Icons

#Utilities
# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
