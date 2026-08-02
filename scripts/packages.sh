#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=scripts/lib/common.sh
source "$SCRIPT_DIR/lib/common.sh"

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
  info "Updating package lists..."
  require_sudo
  sudo apt update
}

install_packages() {
  info "Installing packages..."

  sudo apt install -y \
    "${SHELL_PACKAGES[@]}" \
    "${CLI_PACKAGES[@]}" \
    "${EDITOR_PACKAGES[@]}" \
    "${MONITORING_PACKAGES[@]}" \
    "${UTILITY_PACKAGES[@]}"

  success "Packages installed"
}

cleanup() {
  info "Cleaning up..."
  sudo apt autoremove -y
  success "Cleanup completed"
}

main() {
  update_system
  install_packages
  cleanup

  echo
  success "Package installation completed."
}

main
