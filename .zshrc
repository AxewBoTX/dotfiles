#Zsh Variables
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export MESA_GLSL_VERSION_OVERRIDE=330
export MESA_GL_VERSION_OVERRIDE=3.3
export PODMAN_IGNORE_CGROUPSV1_WARNING=true

# Aliases
alias ls="exa -all --icons"
alias tmux="tmux -u"
alias open="explorer.exe" #File Explorer alias(Windows only)

#Keybindings
bindkey '^l' autosuggest-accept
bindkey '^K' clear-screen

# starship setup
export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init zsh)"
