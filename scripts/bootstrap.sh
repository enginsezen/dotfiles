#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$HOME/Projects/dotfiles"
HOME_DIR="$DOTFILES/home"

echo "==> Creating directories..."

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/bin"

echo "==> Linking Ghostty..."

mkdir -p "$HOME/.config/ghostty"
ln -sfn "$HOME_DIR/.config/ghostty/config" \
        "$HOME/.config/ghostty/config"

echo "==> Linking Zsh..."

ln -sfn "$HOME_DIR/.zshrc" \
        "$HOME/.zshrc"

echo "==> Linking Git..."

ln -sfn "$HOME_DIR/.gitconfig" \
        "$HOME/.gitconfig"

echo
echo "Bootstrap completed successfully."
