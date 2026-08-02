#!/usr/bin/env bash

set -euo pipefail

readonly GREEN="\033[32m"
readonly BLUE="\033[34m"
readonly YELLOW="\033[33m"
readonly RED="\033[31m"
readonly RESET="\033[0m"

info() {
  printf "${BLUE}==>${RESET} %s\n" "$1"
}

success() {
  printf "${GREEN}✔${RESET} %s\n" "$1"
}

warn() {
  printf "${YELLOW}!${RESET} %s\n" "$1"
}

error() {
  printf "${RED}✘${RESET} %s\n" "$1"
}

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

require_sudo() {
  sudo -v
}

die() {
  error "$1"
  exit 1
}
