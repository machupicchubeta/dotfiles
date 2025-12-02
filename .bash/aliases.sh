alias -- -="cd -"
alias ....='cd ../../..'
alias ...="cd ../.."
alias ..="cd .."
alias ~="cd ~"

alias b='bundle'
alias bb='bat'
alias bb_='bat --style=plain --paging=never'
alias bbb='bat --show-all'
alias cpi='cp -i'
alias cpr='cp -r'
alias dc='docker compose'
alias dk='docker'
alias dkc='docker compose'
alias dke='docker exec --interactive --tty'
alias dkps='docker ps'
alias g="git"
alias gitconfig="git config --list | fzf"
alias github-cli="gh"
alias gla='gls -a'
alias gll='gls -l'
alias glla='gls -la'
alias gllh='gls -lh'
alias gls='gls --color=auto --time-style=long-iso'
alias glsd='gls -l | grep "^d"'
alias k='eza --long --color=auto --icons --all --all --sort=name --group-directories-first --binary --group --header --time-style="+%F %T %a" --octal-permissions'
alias kk='eza --long --color=auto --icons --all --all --sort=type --group-directories-first --binary --group --header --time-style="+%F %T %a" --octal-permissions'
alias kt='eza --tree'
alias ktree='eza --tree'
alias l='lsd -lah'
alias lA='lsd -lAh'
alias la='lsd -lah'
alias lg='lazygit'
alias ll='lsd -lh'
alias lt='lsd --tree'
alias ltree='lsd --tree'
alias lzd='lazydocker'
alias lzg='lazygit'
alias main="git switch-default-branch"
alias md='mkdir -p'
alias mvi='mv -i'
alias neov='nvim'
alias pss='procs'
alias rmi='rm -i'
alias rrf='rm -rf'
alias rrfi='rm -rfi'
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
alias remote_repos='gh repo view --web $(ghq list | fzf | cut -d "/" -f 2,3)'
alias repo="cd ~/Repositories"
alias repos='cd $(ghq root)/$(ghq list | fzf)'
alias rp='cd $(ghq root)/$(ghq list | fzf)'
alias tmp="cd ~/tmp"
