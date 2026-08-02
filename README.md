# Dotfiles

A reproducible Ubuntu development environment focused on a clean terminal experience, modern CLI tools and version-controlled configuration.

---

## Features

- Ghostty
- Zsh
- Starship
- Neovim (LazyVim)
- Git
- btop
- LazyDocker
- Docker
- Maple Mono Nerd Font

---

## Repository Structure

```text
.
├── home/
│   ├── .config/
│   ├── .gitconfig
│   └── .zshrc
│
├── scripts/
│   ├── bootstrap.sh
│   └── packages.sh
│
├── CHANGELOG.md
├── INVENTORY.md
├── LICENSE
└── README.md
```

---

## Installation

Clone the repository.

```bash
git clone git@github.com:enginsezen/dotfiles.git
cd dotfiles
```

Install required packages.

```bash
./scripts/packages.sh
```

Create symbolic links.

```bash
./scripts/bootstrap.sh
```

---

## Managed Configuration

| Application | Managed |
|------------|:-------:|
| Ghostty | ✅ |
| Zsh | ✅ |
| Starship | ✅ |
| Git | ✅ |
| Neovim | ✅ |
| btop | ✅ |
| LazyDocker | ✅ |

---

## Philosophy

- Keep configuration under version control.
- Keep installation reproducible.
- Prefer simple, maintainable solutions.
- Automate repetitive setup tasks.

---

## License

Released under the MIT License.
