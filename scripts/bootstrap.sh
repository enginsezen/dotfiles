#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=scripts/lib/common.sh
source "$SCRIPT_DIR/lib/common.sh"

DOTFILES="$(cd "$SCRIPT_DIR/.." && pwd)"
readonly DOTFILES

CONFIG="$DOTFILES/home"
readonly CONFIG

link_file() {
  local source="$1"
  local target="$2"
  local name="${3:-$(basename "$target")}"

  mkdir -p "$(dirname "$target")"

  if [[ -L "$target" ]] && [[ "$(readlink "$target")" == "$source" ]]; then
    success "$name already linked"
    return
  fi

  if [[ -e "$target" ]] && [[ ! -L "$target" ]]; then
    mv "$target" "$target.backup"
    warn "Backed up $name"
  fi

  ln -sfn "$source" "$target"
  success "Linked $name"
}

set_default_shell() {
  local zsh_path

  zsh_path="$(command -v zsh)"

  if [[ "$SHELL" == "$zsh_path" ]]; then
    success "Default shell already set to zsh."
    return
  fi

  info "Setting default shell to zsh..."

  chsh -s "$zsh_path"

  success "Default shell updated."
}

bootstrap() {
  info "Starting bootstrap..."

  mkdir -p "$HOME/.config"
  mkdir -p "$HOME/.local/bin"

  echo

  link_file \
    "$CONFIG/.zshrc" \
    "$HOME/.zshrc" \
    "Zsh"

  link_file \
    "$CONFIG/.gitconfig" \
    "$HOME/.gitconfig" \
    "Git"

  link_file \
    "$CONFIG/.config/starship.toml" \
    "$HOME/.config/starship.toml" \
    "Starship"

  link_file \
    "$CONFIG/.config/ghostty/config" \
    "$HOME/.config/ghostty/config" \
    "Ghostty"

  link_file \
    "$CONFIG/.config/btop" \
    "$HOME/.config/btop" \
    "btop"

  link_file \
    "$CONFIG/.config/lazydocker/config.yml" \
    "$HOME/.config/lazydocker/config.yml" \
    "LazyDocker"

  link_file \
    "$CONFIG/.config/nvim" \
    "$HOME/.config/nvim" \
    "Neovim"

  link_file \
    "$CONFIG/.config/zsh" \
    "$HOME/.config/zsh" \
    "Zsh config"

  echo
}

main() {
  bootstrap
  set_default_shell

  success "Bootstrap completed."
}

main
