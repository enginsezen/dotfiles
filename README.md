# Dotfiles

[![CI](https://github.com/enginsezen/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/enginsezen/dotfiles/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/enginsezen/dotfiles)](https://github.com/enginsezen/dotfiles/releases)

A reproducible Ubuntu development environment focused on a clean terminal experience, modern CLI tools, automated setup, and version-controlled configuration.

## Preview

<p align="center">
  <img src="assets/images/terminal-workspace.png" alt="Terminal workspace" width="100%">
</p>

## Features

- 🖥️ Ghostty
- 🐚 Zsh
- 🚀 Starship
- ✏️ Neovim (LazyVim)
- 📝 Git
- 📊 btop
- 🔤 Maple Mono Nerd Font
- ⚙️ GitHub Actions CI

## Repository Structure

```text
.
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── home/
│   ├── .config/
│   │   ├── btop/
│   │   ├── ghostty/
│   │   ├── nvim/
│   │   ├── starship.toml
│   │   └── zsh/
│   │       ├── aliases.zsh
│   │       ├── exports.zsh
│   │       └── functions.zsh
│   │
│   ├── .gitconfig.example
│   └── .zshrc
│
├── scripts/
│   ├── lib/
│   │   └── common.sh
│   ├── bootstrap.sh
│   ├── fonts.sh
│   ├── packages.sh
│   └── update.sh
│
├── CHANGELOG.md
├── INVENTORY.md
├── LICENSE
├── Makefile
└── README.md
```

## Quick Start

Clone the repository.

```bash
git clone https://github.com/enginsezen/dotfiles.git
cd dotfiles
```

Install required packages.

```bash
make packages
```

Configure Git.

Copy the example configuration.

```bash
cp home/.gitconfig.example home/.gitconfig
```

Edit `home/.gitconfig` and replace:

- `Your Name`
- `your@email.com`

with your own Git identity.

Create symbolic links.

```bash
make bootstrap
```

Install Maple Mono Nerd Font.

```bash
make fonts
```

> [!NOTE]
> This repository provides a `.gitconfig.example` template. Configure it with your own Git identity before running `make bootstrap`.

## Available Commands

| Command | Description |
|----------|-------------|
| `make help` | Show available commands |
| `make bootstrap` | Create symbolic links |
| `make packages` | Install required packages |
| `make update` | Update the operating system |
| `make fonts` | Install Maple Mono Nerd Font |
| `make format` | Format all shell scripts |
| `make format-check` | Verify formatting without modifying files |
| `make lint` | Run ShellCheck |
| `make check` | Format and lint scripts |
| `make ci` | Run the same checks as GitHub Actions |

## Development Workflow

Before committing changes, run:

```bash
make format
make lint
make check
make ci
```

The GitHub Actions workflow performs the same validation automatically on every push.

## Managed Applications

| Application | Status |
|--------------|:------:|
| Ghostty | ✅ |
| Zsh | ✅ |
| Starship | ✅ |
| Neovim (LazyVim) | ✅ |
| btop | ✅ |

## Philosophy

- Keep configuration under version control.
- Keep installation reproducible.
- Prefer simple, maintainable solutions.
- Automate repetitive setup tasks.
- Follow consistent coding standards.
- Keep scripts idempotent.
- Validate every change through Continuous Integration.

## License

Released under the MIT License.
