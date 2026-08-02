#!/usr/bin/env bash

set -euo pipefail

GREEN="\033[32m"
BLUE="\033[34m"
YELLOW="\033[33m"
RED="\033[31m"
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

error() {
    printf "${RED}✘${RESET} %s\n" "$1"
}

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

require_sudo() {
    sudo -v
}
