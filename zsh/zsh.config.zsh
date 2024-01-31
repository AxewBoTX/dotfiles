#Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions web-search)
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

#Powerlevel
export POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs newline prompt_char)

#Zsh Variables
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export MESA_GLSL_VERSION_OVERRIDE=330
export MESA_GL_VERSION_OVERRIDE=3.3

#Ranger
ranger-cd () {
	tmp="$(mktemp)"
	ranger --choosedir="$tmp" "$@"
	if [ -f "$tmp" ]; then
		dir="$(cat "$tmp")"
		rm -f "$tmp"
		[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
	fi
}
alias ranger="ranger-cd"

#Starship 
# eval "$(starship init zsh)
export STARSHIP_CONFIG=~/.config/starship/starship.toml

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
