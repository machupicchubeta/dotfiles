alias ~="cd ~" # `cd` is probably faster to type though

#proxy switching
alias proxy="sudo $HOME/bin/proxy.sh"

alias gls='gls --color=auto --time-style=long-iso'
alias gla='gls -a'
alias gll='gls -l'
alias glla='gls -la'
alias gllh='gls -lh'
alias glsd='gls -l | grep "^d"'

alias ls='lsd'
alias lt='ls --tree'
alias lss='ls -alh --group-dirs first'
alias lk='ls -alh --group-dirs first'

alias rrf='rm -rf'
alias rr='rm -rfi'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias pd='popd'

alias mkdir='mkdir -p'

alias sudo='sudo '

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

alias drop="cd ~/Dropbox"
alias doc="cd ~/Documents"
alias download="cd ~/Downloads"
alias repo="cd ~/Repositories"
alias repos='cd $(ghq root)/$(ghq list | fzf)'
alias remote_repos='hub browse $(ghq list | fzf | cut -d "/" -f 2,3)'
alias dotfiles="cd ~/Repositories/github.com/machupicchubeta/dotfiles"
alias bin="cd ~/bin"
alias tmp="cd ~/tmp"
alias setup="cd ~/Repositories/github.com/machupicchubeta/laptop"
alias g="git"
alias v="vi"
alias neov="nvim"
alias vv="nvim"
alias master="git checkout master"
alias main="git checkout main"
alias release="git checkout release"
alias release_pull_request_name="echo RELEASE_$(date +%Y%m%d_%H%M)"
alias rprn="echo RELEASE_$(date +%Y%m%d_%H%M)"
alias release_pull_request="git pull-request -b release -l release"
alias rpr="git pull-request -b release -l release"
alias github-cli="gh"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

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

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

alias b='bundle'

alias test_in_parallel='bundle && rails db:environment:set RAILS_ENV=test; rails parallel:load_schema parallel:rake\[db:migrate\] parallel:rake\[db:seed_fu\] parallel:spec'

alias rk='rake'
alias rks='rake spec'

alias rs='rails server -b lvh.me -p 3000'
alias rc='rails console'
alias rr='rails runner'
alias sidekiq='bundle exec sidekiq -C config/sidekiq.yml'
alias sidekiq_daemon='bundle exec sidekiq -C config/sidekiq.yml -d'

alias test_in_serial='bundle && rails db:environment:set RAILS_ENV=test; rails db:reset db:migrate db:seed db:seed_fu spec'
alias retest='rspec --only-failures'
alias next_failure='rspec --next-failure'

alias ctags_for_vim='ctags --recurse=yes -f $HOME/.vim/tags'

alias start_postgres='pg_ctl -D /usr/local/var/postgres -l logfile start'

alias dk='docker'
alias dkps='docker ps'
alias dke='docker exec --interactive --tty'
alias dkc='docker-compose'
alias dkcps='docker-compose ps'

alias -g L='| less'
alias -g G='| grep'
alias -g GV='| grep -v grep | grep'
alias -g X='| xargs'
alias -g P='| pick'
alias -g F='| fzf'

# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi

alias k='exa -l --time-style=long-iso --group --binary --color always --icons -a -a -s type  --group-directories-first'
alias kk='exa -l --time-style=long-iso --group --binary --color always --icons -a -a -s type --group-directories-first'

alias _bb_='bat -p --paging=never --theme="Solarized (dark)"'
alias bb='bat --theme="Solarized (dark)"'
alias bb_='bat -p --theme="Solarized (dark)"'
alias bbb='bat --show-all --theme="Solarized (dark)"'
alias bbb_="bat --show-all --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo \"Solarized (dark)\")"

alias pss='procs'

alias sedd='sd'

alias lzd='lazydocker'

alias lg='lazygit'
alias lzg='lazygit'

# alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew'
alias brew='env PATH=${PATH/$HOME\/\.pyenv\/shims:/} brew'
