#!/bin/bash
set -u

if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
  : "${HOMEBREW_REPOSITORY:=/usr/local/Homebrew}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
  : "${HOMEBREW_REPOSITORY:=/opt/homebrew}"
fi

if [ ! -x "$(command -v git)" ]; then
  echo "Install git command first."
  exit 1
fi
sudo chown -R $(whoami):admin "$HOMEBREW_PREFIX"/*
cd "$HOMEBREW_REPOSITORY" && git checkout master

if [ ! -x "$(command -v brew)" ]; then
  echo "Install brew command first."
  exit 1
fi

brew install mas
mas install 497799835 # Xcode
mas install 411213048 # LadioCast
mas install 1284863847 # Unsplash Wallpapers
mas install 1295203466 # Microsoft Remote Desktop

brew tap thoughtbot/formulae
brew tap homebrew/cask-versions
brew tap homebrew/services
brew tap homebrew/bundle
brew tap puma/puma
brew tap homebrew/cask-fonts
brew tap buo/cask-upgrade
brew tap universal-ctags/universal-ctags
brew tap heroku/brew
brew tap github/gh
brew tap mongodb/brew
brew tap clementtsang/bottom
brew tap spectralops/tap
brew tap warrensbox/tap
brew tap auth0/auth0-cli
brew tap Code-Hex/tap

brew unlink vim
brew upgrade macvim
brew unlink macvim
brew upgrade vim
brew link vim
brew update
brew upgrade --fetch-HEAD

# GNU command line tools
brew install coreutils
brew install binutils
brew install diffutils
brew install ed
brew install findutils
brew install gawk
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnutls
brew install gnu-getopt
brew install grep
brew install gzip
brew install screen
brew install watch
brew install wdiff
brew install wget
brew install bash
brew install emacs
if [ "$(uname -m)" = "x86_64" ]; then
  brew install gdb
fi
brew install gpatch
brew install less
brew install m4
brew install make
brew install nano

# use a newer version instead of the version shipped by macOS
brew install file-formula
brew install git
# brew install openssh # Kick out "openssh"; d911522cc87c65ecef011e3bb2d58574e97bcae7
brew install perl
brew install python
brew install rsync
brew install svn
brew install unzip
brew install macvim
brew unlink macvim
brew install vim
brew install zsh
brew install curl
brew install sqlite
brew install sl
brew install zlib

brew install gcc
brew install cmake
brew install gdbm
brew install tig
brew install git-lfs
brew install mysql
brew install redis
brew install memcached
brew install node
brew install node-build --HEAD
brew link node-build
brew install nodenv
brew install watchman
brew install z
brew install zsh-completions
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install terminal-notifier
brew install source-highlight
brew install luarocks
brew install neovim
brew install bash-completion
brew install imagemagick
brew install gti
brew install heroku
brew install pyenv
brew install jq
brew install ansible
brew install direnv
brew install ttyrec
brew install dnsmasq
brew install ag
brew install spark
brew install tmux
brew install reattach-to-user-namespace
brew install gnupg
brew install grc
brew install tor
brew install nkf
brew install automake
brew install p7zip
brew install pick
brew install docutils
brew install universal-ctags --HEAD
brew link universal-ctags
brew install tree
brew install packer
brew install packer-completion
brew install chrome-cli
brew install cscope
brew install postgresql@16
brew install parallel
brew install nmap
brew install go
brew install goenv --HEAD
brew install slackcat
brew install lame
brew install vault
brew install yank
brew install v8
brew install git-secrets
brew install sslscan
brew install git-when-merged
brew install fortune
brew install figlet
brew install asciiquarium
brew install cmatrix
brew install yarn
brew install nss
brew install cheat
brew install ios-sim
brew install swift
brew install swiftlint
brew install x265
brew install puma-dev
brew install stunnel
brew install sqlmap
brew install rust
brew install plenv
brew install shyaml
brew install shellcheck
brew install ghq
brew install flow
brew install ocaml
brew unlink ocaml
brew install jenv
brew install kotlin
brew install rcm
brew install ansible-lint
brew install firebase-cli
brew install logrotate
brew install pre-commit
brew install protobuf
brew install pv
brew install git-secrets
brew install testssl
brew install helm
brew install gradle
brew install azure-cli
brew install circleci
brew install eslint
brew install iso-codes
brew install ssh-copy-id
brew install ssh-permit-a38
brew install swiftformat
brew install terraform_landscape
brew install thors-serializer
brew install uriparser
brew install util-linux
brew install watchexec
brew install xcodegen
brew install webpack
brew install elixir
brew install elm
brew install erlang
brew install ghostscript
brew install duck
brew install doctl
brew install git-quick-stats
brew install peco
brew install fzf
brew install coffeescript
brew install awscli
brew install whois
brew install bettercap
brew install lsd
brew install serverless
brew install amazon-ecs-cli
brew install emojify
brew install jsonpp
brew install gh
brew install mosquitto
brew install arp-scan
brew install rustup-init
brew install mongodb-community
brew install aws-shell
brew install bottom
brew install gibo
brew install tldr
brew install fd
brew install ripgrep
brew install rga
brew install eza
brew install bat
brew install git-delta
brew install procs
brew install sd
brew install lazydocker
brew install lazygit
brew install openjdk
brew install sleuthkit
brew install robotsandpencils/made/xcodes
brew install libressl
brew install graphicsmagick
brew install shared-mime-info
brew install graphviz
brew install teller
brew install screenfetch
brew install neovim-remote
brew install starship
brew install minikube
brew install dust
brew install tokei
brew install hyperfine
brew install bandwhich
brew install grex
brew install duf
brew install broot
brew install choose-rust
brew install detect-secrets
brew install mongocli
brew install wasmtime
brew install licensefinder
brew install dog
brew install xh
brew install curlie
brew install httpie
brew install gping
brew install glances
brew install vite
brew install esbuild
brew install f2
brew install cfn-lint
brew install aws-vault
brew install tfenv
brew install warrensbox/tap/tgswitch
brew install auth0
brew install jless
brew install terraform-lsp
brew install sheldon
brew install neo-cowsay
brew install neovide
brew install glab
brew install flyctl
brew install ffmpeg

# For Ruby
brew install openssl
brew install openssl@1.1
brew install readline
brew install ruby-build
brew install rbenv
brew install rbenv-default-gems

# For Nokogiri gem
brew install libxml2
brew install libxslt
brew install libiconv

: "${CPU_BRAND:=$(/usr/sbin/sysctl -n machdep.cpu.brand_string)}"

if [ -n "$(echo $CPU_BRAND | grep -o 'Apple')" -a "$(uname -m)" = "x86_64" ]; then
  echo -e "Skip universal casks installation for under x86_64 arch settings.\nOn Apple silicon, please run under arm64 arch settings."
else
  brew install --cask 1password
  brew install --cask 1password-cli
  brew install --cask iterm2
  brew install --cask google-japanese-ime
  brew install --cask google-chrome
  brew install --cask docker
  brew install --cask dropbox
  brew install --cask vagrant
  brew install --cask firefox
  brew install --cask firefox-developer-edition
  brew install --cask evernote
  brew install --cask slack
  brew install --cask skitch
  brew install --cask geektool
  brew install --cask xquartz
  brew install --cask skype
  brew install --cask knock
  brew install --cask licecap
  brew install --cask sublime-text
  brew install --cask encryptme
  brew install --cask karabiner-elements
  brew install --cask dash
  brew install --cask reflector
  brew install --cask disk-inventory-x
  brew install --cask cyberduck
  brew install --cask inssider
  brew install --cask betterzip
  brew install --cask suspicious-package
  brew install --cask packages
  brew install --cask gyazo
  brew install --cask alfred
  brew install --cask githubpulse
  brew install --cask github
  brew install --cask paparazzi
  brew install --cask google-chrome-canary
  brew install --cask vlc
  brew install --cask chrome-remote-desktop-host
  brew install --cask vivaldi
  brew install --cask wireshark
  brew install --cask sketch
  brew install --cask blisk
  brew install --cask gitter
  brew install --cask fliqlo
  brew install --cask google-earth-pro
  brew install --cask zoom
  brew install --cask spotify
  brew install --cask chromedriver
  brew install --cask dotnet-sdk
  brew install --cask visual-studio-code
  brew install --cask dynamodb-local
  brew install --cask discord
  brew install --cask aerial
  brew install --cask figma
  brew install --cask miro
  brew install --cask amazon-chime
  brew install --cask osquery
  brew install --cask lens
  brew install --cask framer
  brew install --cask deepl
  brew install --cask marvel
  brew install --cask brave-browser
  brew install --cask raindropio
  brew install --cask postman
  brew install --cask messenger
  brew install --cask fontforge
  brew install --cask microsoft-office
  brew install --cask drawio
  brew install --cask coscreen
  brew install --cask mmhmm
  brew install --cask notion
  brew install --cask kindle
  brew install --cask microsoft-teams
  brew install --cask alacritty
  brew install --cask session-manager-plugin
  brew install --cask microsoft-edge
  brew install --cask grammarly
  brew install --cask raycast
  brew install --cask blackhole-2ch
  brew install --cask blackhole-16ch
  brew install --cask blackhole-64ch
  brew install --cask warp
  brew install --cask cloudflare-warp
  brew install --cask hyper
  brew install --cask xcodes
  brew install --cask ngrok
  brew install --cask clickup
  brew install --cask slack-cli

  brew install --cask font-fira-code
  brew install --cask font-fira-code-nerd-font
  brew install --cask font-fira-mono-nerd-font
  brew install --cask font-hack-nerd-font
  brew install --cask font-victor-mono
  brew install --cask font-victor-mono-nerd-font
  brew install --cask font-monoid
  brew install --cask font-monoid-nerd-font
  brew install --cask font-lilex
  brew install --cask font-iosevka
  brew install --cask font-iosevka-slab
  brew install --cask font-iosevka-nerd-font
  brew install --cask font-iosevka-term-nerd-font
  brew install --cask font-hasklig
  brew install --cask font-cascadia-code
  brew install --cask font-cascadia-code-pl
  brew install --cask font-jetbrains-mono
  brew install --cask font-jetbrains-mono-nerd-font
  brew install --cask font-ibm-plex
  brew install --cask font-blex-mono-nerd-font
  brew install --cask font-mplus-nerd-font
  brew install --cask font-noto-nerd-font
  brew install --cask font-go-mono-nerd-font
  brew install --cask font-inconsolata-nerd-font
  brew install --cask font-inconsolata-go-nerd-font
  brew install --cask font-anonymice-nerd-font
  brew install --cask font-agave-nerd-font
  brew install --cask font-3270-nerd-font

  brew cu --all --cleanup --yes
fi

if [ "$(uname -m)" = "x86_64" ]; then
  brew install --cask virtualbox
  brew install --cask soundflower

  brew cu virtualbox --cleanup
  brew cu soundflower --cleanup
elif [ "$(uname -m)" = "arm64" ]; then
  brew install --cask fertigt-slate
fi

brew cleanup --prune=0 -s
