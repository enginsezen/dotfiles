#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=scripts/lib/common.sh
source "$SCRIPT_DIR/lib/common.sh"

readonly DOTFILES="$HOME/Projects/dotfiles"
readonly CONFIG="$DOTFILES/home"

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
