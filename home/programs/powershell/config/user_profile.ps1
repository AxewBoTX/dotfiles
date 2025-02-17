#Powershell Prompt`
oh-my-posh init pwsh --config 'C:\Users\Axew\.config\powershell\oh-my-posh-theme\paradox.omp.json' | Invoke-Expression

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

# Keybinds
Set-PSReadLineKeyHandler -Key "Ctrl+l" -Function AcceptSuggestion #AutoComplete
Set-PSReadLineKeyHandler -Key "Ctrl+Shift+k" -Function ClearScreen #Clear Screen
