#!/usr/bin/env bash

set -euo pipefail

SHELL_PACKAGES=(
  zsh
  fzf
)

CLI_PACKAGES=(
  bat
  eza
  fd-find
  ripgrep
  tree
  zoxide
)

EDITOR_PACKAGES=(
  neovim
)

MONITORING_PACKAGES=(
  btop
)

UTILITY_PACKAGES=(
  curl
  git
  unzip
  wget
  zip
)

update_system() {
  echo "==> Updating package lists..."
  sudo apt update
}

install_packages() {
  echo "==> Installing packages..."

  sudo apt install -y \
    "${SHELL_PACKAGES[@]}" \
    "${CLI_PACKAGES[@]}" \
    "${EDITOR_PACKAGES[@]}" \
    "${MONITORING_PACKAGES[@]}" \
    "${UTILITY_PACKAGES[@]}"
}

cleanup() {
  echo "==> Cleaning up..."
  sudo apt autoremove -y
}

main() {
  update_system
  install_packages
  cleanup
}

main
