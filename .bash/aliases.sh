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
alias drop="cd ~/Dropbox"
alias laptop="cd ~/Repositories/github.com/machupicchubeta/laptop"
alias remote_repos='gh repo view --web $(ghq list | fzf | cut -d "/" -f 2,3)'
alias repo="cd ~/Repositories"
alias repos='cd $(ghq root)/$(ghq list | fzf)'
alias rp='cd $(ghq root)/$(ghq list | fzf)'
alias tmp="cd ~/tmp"

alias start_postgres="pg_ctl -D $(brew --prefix)/var/postgresql@16 -l logfile start"

#proxy switching
alias proxy="sudo $HOME/bin/proxy.sh"

alias pd='popd'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

alias http_server_ruby="ruby -run -e httpd . -p 8000"
alias http_server_python="python3 -m http.server"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Show/hide hidden files in Finder
alias hidefiles="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias showfiles="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

# Canonical hex dump; some systems have this symlinked
type -t hd > /dev/null || alias hd="hexdump -C"

# OS X has no `md5sum`, so use `md5` as a fallback
type -t md5sum > /dev/null || alias md5sum="md5"
