# ==========================================================
# ZSH Configuration
# Ubuntu 26.04 LTS
# ==========================================================

# ----------------------------------------------------------
# History
# ----------------------------------------------------------

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY

# ----------------------------------------------------------
# Shell Options
# ----------------------------------------------------------

setopt AUTO_CD
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# ----------------------------------------------------------
# Completion
# ----------------------------------------------------------

autoload -Uz compinit
compinit

# Better completion
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*' squeeze-slashes true

setopt AUTO_MENU
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

# TAB / Shift+TAB
bindkey '^I' menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete

# ----------------------------------------------------------
# Keybindings
# ----------------------------------------------------------

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# ----------------------------------------------------------
# Plugins
# ----------------------------------------------------------

# Autosuggestions
if [[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# FZF
[[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]] \
  && source /usr/share/doc/fzf/examples/key-bindings.zsh

[[ -f /usr/share/doc/fzf/examples/completion.zsh ]] \
  && source /usr/share/doc/fzf/examples/completion.zsh

# Syntax Highlighting
# (sudo apt install zsh-syntax-highlighting)
if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ----------------------------------------------------------
# User Configuration
# ----------------------------------------------------------

[[ -f ~/.config/zsh/exports.zsh ]] && source ~/.config/zsh/exports.zsh
[[ -f ~/.config/zsh/functions.zsh ]] && source ~/.config/zsh/functions.zsh
[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh

# ----------------------------------------------------------
# Prompt
# ----------------------------------------------------------

if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi
