# #Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions web-search)
source $ZSH/oh-my-zsh.sh

#Zsh Variables
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export MESA_GLSL_VERSION_OVERRIDE=330
export MESA_GL_VERSION_OVERRIDE=3.3
export PODMAN_IGNORE_CGROUPSV1_WARNING=true

# mise setup
eval "$(~/.local/bin/mise activate zsh)"

# homebrew setup
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias ls="exa -all --icons"
alias tmux="tmux -u"
alias open="explorer.exe" #File Explorer alias(Windows only)

#Keybindings
bindkey '^l' autosuggest-accept
bindkey '^K' clear-screen

# theme
# source ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
#
# starship setup
export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init zsh)"

if [ -e /home/axew/.nix-profile/etc/profile.d/nix.sh ]; then . /home/axew/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
