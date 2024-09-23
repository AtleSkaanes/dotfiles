
export EDITOR='nvim'

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
# plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit


typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[single-hyphpen-option]='fg=blue'
ZSH_HIGHLIGHT_STYLES[double-hyphpen-option]='fg=blue,bold'

# Prompt
if zmodload zsh/terminfo && (( terminfo[colors] >= 256 )); then
    eval "$(starship init zsh)"
fi

# FZF
source <(fzf --zsh)

# Zoxide
eval "$(zoxide init zsh --cmd cd)"

## ALIASES
alias ll='ls -alF'

## KEYBINDS
bindkey "^[[1;5C" forward-word
bindkey "^[[1;50" backward-word
bindkey "\e[3~" delete-char

autoload -U edit-command-line
zle -N edit-command-line
bindkey "^xe" edit-command-line
bindkey "^x^e" edit-command-line
