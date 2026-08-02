#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=scripts/lib/common.sh
source "$SCRIPT_DIR/lib/common.sh"

readonly FONT_NAME="Maple Mono NF"

# Güncellemek istediğinde sadece bu iki satırı değiştir.
readonly FONT_VERSION="v7.9"
readonly FONT_PACKAGE="MapleMono-NF.zip"

readonly DOWNLOAD_URL="https://github.com/subframe7536/maple-font/releases/download/${FONT_VERSION}/${FONT_PACKAGE}"

readonly FONT_DIR="$HOME/.local/share/fonts"
TMP_DIR="$(mktemp -d)"
readonly TMP_DIR

cleanup() {
  rm -rf "$TMP_DIR"
}

trap cleanup EXIT

check_dependencies() {
  command_exists curl || die "curl is required."
  command_exists unzip || die "unzip is required."
  command_exists fc-cache || die "fontconfig is required."
}

check_installed() {
  if find "$FONT_DIR" -maxdepth 1 -type f -name "MapleMono-NF-*.ttf" | grep -q .; then
    success "$FONT_NAME is already installed."
    exit 0
  fi
}

download_font() {
  info "Downloading ${FONT_NAME}..."

  curl \
    --fail \
    --location \
    --progress-bar \
    --connect-timeout 10 \
    --retry 3 \
    --output "$TMP_DIR/font.zip" \
    "$DOWNLOAD_URL"

  success "Download completed."
}

extract_font() {
  info "Extracting archive..."

  unzip -q \
    "$TMP_DIR/font.zip" \
    -d "$TMP_DIR/font"

  success "Archive extracted."
}

install_font() {
  info "Installing fonts..."

  mkdir -p "$FONT_DIR"

  find "$TMP_DIR/font" \
    -type f \
    -name "*.ttf" \
    -exec cp -f {} "$FONT_DIR/" \;

  success "Fonts installed."
}

refresh_cache() {
  info "Refreshing font cache..."

  fc-cache -f

  success "Font cache refreshed."
}

main() {
  check_dependencies
  check_installed

  download_font
  extract_font
  install_font
  refresh_cache

  echo
  success "${FONT_NAME} installation completed."
}

main
