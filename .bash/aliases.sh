alias -- -="cd -"
alias ....='cd ../../..'
alias ...="cd ../.."
alias ..="cd .."
alias ~="cd ~"

alias b='bundle'
alias bb='bat'
alias bb_='bat --style=plain --paging=never'
alias bbb='bat --show-all'
alias cpi='cp --interactive'
alias cpr='cp --recursive'
alias dc='docker compose'
alias dk='docker'
alias dkc='docker compose'
alias dke='docker exec --interactive --tty'
alias dkps='docker ps'
alias g="git"
alias gitconfig="git config --list | fzf"
alias github-cli="gh"
alias gla='gls --all'
alias gll='gls -l'
alias glla='gls -l --all'
alias gllh='gls -l --human-readable'
alias gls='gls --color=auto --time-style=long-iso'
alias glsd='gls -l | grep "^d"'
alias k='eza --long --color=auto --icons --all --all --sort=name --group-directories-first --binary --group --header --time-style="+%F %T %a" --octal-permissions'
alias kk='eza --long --color=auto --icons --all --all --sort=type --group-directories-first --binary --group --header --time-style="+%F %T %a" --octal-permissions'
alias kt='eza --tree'
alias ktree='eza --tree'
alias l='lsd --long --all --human-readable'
alias lA='lsd --long --almost-all --human-readable'
alias la='lsd --long --all --human-readable'
alias lg='lazygit'
alias ll='lsd --long --human-readable'
alias lt='lsd --tree'
alias ltree='lsd --tree'
alias lzd='lazydocker'
alias lzg='lazygit'
alias main="git switch-default-branch"
alias md='mkdir --parents'
alias mvi='mv --interactive'
alias neov='nvim'
alias pss='procs'
alias rmi='rm -i'
alias rrf='rm --recursive --force'
alias rrfi='rm --recursive --force -i'
alias sedd='sd'
alias treee='lsd --tree'
alias treeee='eza --tree'
alias v='nvim'
alias vv='nvim'

alias bin="cd ~/bin"
alias doc="cd ~/Documents"
alias dotfiles="cd ~/Repositories/github.com/machupicchubeta/dotfiles"
alias download="cd ~/Downloads"
alias laptop="cd ~/Repositories/github.com/machupicchubeta/laptop"
alias remote_repos='gh repo view --web $(ghq list | fzf | cut --delimiter="/" --fields=2,3)'
alias repo="cd ~/Repositories"
alias repos='cd $(ghq root)/$(ghq list | fzf)'
alias rp='cd $(ghq root)/$(ghq list | fzf)'
alias tmp="cd ~/tmp"
