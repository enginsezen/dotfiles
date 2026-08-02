# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# eza
alias ls='eza --icons --group-directories-first'
alias l='eza -1 --icons'
alias ll='eza -lh --icons --git --group-directories-first'
alias la='eza -lah --icons --git --group-directories-first'
alias lt='eza --tree --icons'

# bat
alias cat='batcat --style=plain'
alias catn='batcat'

# fd
alias fd='fdfind'

# misc
alias cls='clear'
alias h='history'
alias j='z'

# Docker
alias d='docker'
alias dc='docker compose'

# Containers
alias dps='docker ps'
alias dpa='docker ps -a'
alias dex='docker exec -it'
alias dlog='docker logs -f'

# Images
alias di='docker images'

# Networks
alias dn='docker network ls'

# Volumes
alias dv='docker volume ls'

# Compose
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcr='docker compose restart'
alias dcl='docker compose logs -f'
alias dcp='docker compose pull'

# Lazydocker
alias ld='lazydocker'
