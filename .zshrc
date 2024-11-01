
path+=("$HOME/go/bin/" "$HOME/.cargo/bin/")
export PATH

export EDITOR='nvim'

export CXX='clang++'
export CC='clang'

export DF="$HOME/.dotfiles/"

export GTK_THEME='catppuccin-mocha-sky-standard+default'

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
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=blue'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=blue,bold'

# Prompt
if zmodload zsh/terminfo && (( terminfo[colors] >= 256 )); then
    eval "$(starship init zsh)"
fi

# FZF
source <(fzf --zsh)

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"

# Zoxide
eval "$(zoxide init zsh --cmd cd)"

## ALIASES
alias ll='ls -alF'

alias peaclock='peaclock --config-dir="$HOME/.config/peaclock/"'

alias whatismyip='curl icanhazip.com'

## FUNCTIONS

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

function mkdirc() {
    mkdir $1 && cd $1
}

function find-desktop() {
    find ~/.local/share/applications /usr/share/applications /var/lib/flatpak/exports/share/applications/ -name "$1"
}

## KEYBINDS
bindkey "^[[1;5C" forward-word
bindkey "^[[1;50" backward-word
bindkey "\e[3~" delete-char

autoload -U edit-command-line
zle -N edit-command-line
bindkey "^xe" edit-command-line
bindkey "^x^e" edit-command-line

# bun completions
[ -s "/home/atle/.bun/_bun" ] && source "/home/atle/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
