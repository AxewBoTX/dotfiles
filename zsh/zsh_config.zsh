alias ls="exa -all --icons"
alias tmux="tmux -u"
export POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs newline prompt_char)
export PATH=$PATH:$HOME/.local/bin
bindkey '^l' autosuggest-accept
bindkey '^K' clear-screen
export  MESA_GLSL_VERSION_OVERRIDE=330
export  MESA_GL_VERSION_OVERRIDE=3.3
