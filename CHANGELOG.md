# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog.

## [Unreleased]

### Added

- Markdown-specific Neovim configuration.

### Changed

- Ongoing improvements and fixes.

### Fixed

- Disabled Markdown conceal for improved fenced code block editing.

## [0.2.0] - 2026-08-03

### Added

- Automatic Starship installation
- Automatic zsh-autosuggestions installation
- Automatic zsh-syntax-highlighting installation
- Automatic default shell configuration (zsh)
- Git configuration template (`.gitconfig.example`)
- Managed LazyDocker configuration

### Changed

- Improved bootstrap workflow
- Improved package installation process
- Improved Zsh configuration reliability
- Improved shell completion behavior
- Improved project documentation
- Improved installation workflow

### Fixed

- Missing Starship installation on fresh systems
- Missing zsh-autosuggestions dependency
- Errors caused by unavailable optional integrations
- Default shell not being changed automatically
- Restored preferred Zsh TAB completion after FZF initialization
- Improved bootstrap idempotency

## [0.1.0] - 2026-08-02

### Added

- Bootstrap automation
- Package installation automation
- System update automation
- Maple Mono Nerd Font installer
- Shared shell utility library
- Makefile workflow
- ShellCheck integration
- shfmt integration
- GitHub Actions CI

### Managed Configuration

- Ghostty
- Zsh
- Starship
- Git
- Neovim (LazyVim)
- btop

### Development

- Common shell utility functions
- Consistent shell script structure
- Automated formatting
- Static analysis workflow
