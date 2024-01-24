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

: "${CPU_BRAND:=$(/usr/sbin/sysctl -n machdep.cpu.brand_string)}"
if [ -n "$(echo $CPU_BRAND | grep -o 'Apple')" -a -x "$(command -v arch)" ]; then
  alias x86_64='exec arch -arch x86_64 "$SHELL"'
  alias x64='x86_64'
  alias arm64='exec arch -arch arm64e "$SHELL"'
  alias a64='arm64'

: "${X86_64_HOMEBREW_PATH:=/usr/local/bin/brew}"
  if [ "$(uname -m)" = "arm64" -a -x "$X86_64_HOMEBREW_PATH" ]; then
    alias x86_64_brew="arch -arch x86_64 $X86_64_HOMEBREW_PATH"
    alias x64_brew='x86_64_brew'
  fi
fi
