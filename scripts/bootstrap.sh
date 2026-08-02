#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$HOME/Projects/dotfiles"
CONFIG="$DOTFILES/home"

GREEN="\033[32m"
BLUE="\033[34m"
YELLOW="\033[33m"
RESET="\033[0m"

info() {
    printf "${BLUE}==>${RESET} %s\n" "$1"
}

success() {
    printf "${GREEN}✔${RESET} %s\n" "$1"
}

warn() {
    printf "${YELLOW}!${RESET} %s\n" "$1"
}

link_file() {
    local source="$1"
    local target="$2"

    mkdir -p "$(dirname "$target")"

    if [[ -L "$target" ]] && [[ "$(readlink "$target")" == "$source" ]]; then
        success "$(basename "$target") already linked"
        return
    fi

    if [[ -e "$target" ]] && [[ ! -L "$target" ]]; then
        mv "$target" "$target.backup"
        warn "Backed up $(basename "$target")"
    fi

    ln -sfn "$source" "$target"
    success "Linked $(basename "$target")"
}

info "Starting bootstrap..."

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/bin"

echo

link_file \
    "$CONFIG/.zshrc" \
    "$HOME/.zshrc"

link_file \
    "$CONFIG/.gitconfig" \
    "$HOME/.gitconfig"

link_file \
    "$CONFIG/.config/starship.toml" \
    "$HOME/.config/starship.toml"

link_file \
    "$CONFIG/.config/ghostty/config" \
    "$HOME/.config/ghostty/config"

link_file \
    "$CONFIG/.config/btop" \
    "$HOME/.config/btop"

link_file \
    "$CONFIG/.config/lazydocker/config.yml" \
    "$HOME/.config/lazydocker/config.yml"

link_file \
    "$CONFIG/.config/nvim" \
    "$HOME/.config/nvim"

echo

success "Bootstrap completed."
