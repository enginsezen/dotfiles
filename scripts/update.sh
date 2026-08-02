#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/lib/common.sh"

update_system() {
  info "Updating package lists..."
  require_sudo
  sudo apt update

  info "Upgrading installed packages..."
  sudo apt upgrade -y

  success "System upgraded"
}

cleanup() {
  info "Removing unused packages..."
  sudo apt autoremove -y

  info "Cleaning package cache..."
  sudo apt autoclean

  success "Cleanup completed"
}

main() {
  update_system
  cleanup

  echo
  success "System update completed."
}

main
