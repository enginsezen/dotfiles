# Dotfiles

A reproducible Ubuntu development environment focused on a clean terminal experience, modern CLI tools, and version-controlled configuration.

---

## Features

- 🖥️ Ghostty
- 🐚 Zsh
- 🚀 Starship
- ✏️ Neovim (LazyVim)
- 📝 Git
- 📊 btop
- 🐳 LazyDocker
- 🔤 Maple Mono Nerd Font

---

## Repository Structure

```text
.
├── home/
│   ├── .config/
│   │   ├── btop/
│   │   ├── ghostty/
│   │   ├── lazydocker/
│   │   ├── nvim/
│   │   └── starship.toml
│   ├── .gitconfig
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

---

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

Create symbolic links.

```bash
make bootstrap
```

Install Maple Mono Nerd Font.

```bash
make fonts
```

---

## Available Commands

| Command | Description |
|----------|-------------|
| `make help` | Show available commands |
| `make bootstrap` | Create symbolic links |
| `make packages` | Install required packages |
| `make update` | Update the operating system |
| `make fonts` | Install Maple Mono Nerd Font |
| `make format` | Format all shell scripts |
| `make lint` | Run ShellCheck |
| `make check` | Run formatter and linter |

---

## Development Workflow

Every change should follow the same workflow.

```bash
make format
make lint
make check
```

---

## Managed Configuration

| Application | Status |
|--------------|:------:|
| Ghostty | ✅ |
| Zsh | ✅ |
| Starship | ✅ |
| Git | ✅ |
| Neovim (LazyVim) | ✅ |
| btop | ✅ |
| LazyDocker | ✅ |

---

## Philosophy

- Keep configuration under version control.
- Keep installation reproducible.
- Prefer simple, maintainable solutions.
- Automate repetitive setup tasks.
- Follow consistent coding standards.
- Keep scripts idempotent.

---

## License

Released under the MIT License.
