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

# Libraries that used in Ruby or so, or used to build from source code
brew install openssl@3
brew install openssl@1.1
brew install readline
brew install m4
brew install autoconf
brew install bison
brew install libyaml
brew install gmp
brew install libffi

brew install libressl

# Libraries, Software Runtime Environments for installing Ruby with YJIT
brew install sqlite
brew install python@3
brew install llvm@16
brew install rust

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
# brew install emacs
if [ "$(uname -m)" = "x86_64" ]; then
  brew install gdb
fi
brew install gpatch
brew install less
# brew install m4
brew install make
# brew install nano

# Use the newer version tools instead of the version shipped by macOS
brew install file-formula
brew install git
# brew install openssh # Kick out "openssh"; d911522cc87c65ecef011e3bb2d58574e97bcae7
# brew install perl
# brew install python@3
brew install rsync
brew install subversion
brew install unzip
# brew install macvim
# brew unlink macvim
# brew install vim
brew install zsh
brew install curl
# brew install sqlite
brew install sl
brew install zlib

# Programming languages, Software Development Environments, its environment management or build tools and libraries
brew install gcc
brew install cmake
brew install gdbm

brew install rustup-init
# brew install rust
brew install ruby-build
brew install rbenv
brew install rbenv-default-gems
brew install ruby
brew install pyenv
# brew install python@3
brew install plenv
brew install perl
brew install goenv --HEAD
brew install go
brew install node-build --HEAD
brew link node-build
brew install nodenv
brew install node
brew install yarn
brew install jenv
brew install openjdk
brew install kotlin
brew install luarocks
brew install lua
brew install ocaml
brew unlink ocaml
brew install elixir
brew install erlang
brew install coffeescript
brew install ghostscript
brew install tfenv

brew install protobuf
brew install mosquitto
brew install gradle
brew install wasmtime
brew install webpack
brew install v8
brew install vite
brew install esbuild
brew install terraform-lsp

# Libraries used in Nokogiri gem
brew install libxml2
brew install libxslt
brew install libiconv

# Text Editor and its extensions
brew install nano
brew install emacs
brew install neovim
brew install neovim-remote
brew install neovide
brew install macvim
brew unlink macvim
brew install vim
brew install universal-ctags --HEAD
brew link universal-ctags
brew install source-highlight
brew install cscope
brew install robotsandpencils/made/xcodes
brew install swift

# Shell extensions
brew install z
brew install zsh-completions
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install terminal-notifier
brew install bash-completion
brew install tmux
brew install reattach-to-user-namespace

brew install sheldon
brew install starship

# Searching and Finding tools
brew install the_silver_searcher
brew install pick
brew install peco
brew install fzf
brew install fd
brew install ripgrep
brew install ripgrep-all

# Data stores
brew install mysql
brew install postgresql@16
brew install redis
brew install memcached
brew install mongodb-community

# Web Application Servers
brew install puma-dev

# Virtual Machines and Infrastructure tools
brew install helm
brew install minikube
brew install ansible
brew install lazydocker

# XaaS tools
brew install heroku
brew install firebase-cli
brew install azure-cli
brew install doctl
brew install awscli
brew install amazon-ecs-cli
brew install aws-shell
brew install mongocli
brew install aws-vault

brew install gh
brew install serverless
brew install circleci
brew install warrensbox/tap/tgswitch
brew install auth0
brew install glab
brew install flyctl

# Linters and Code Formatters
brew install swiftlint
brew install shellcheck
brew install flow
brew install ansible-lint
brew install eslint
brew install swiftformat
brew install cfn-lint

# Command-line tools
brew install jq
brew install gti
brew install direnv
brew install spark
brew install gnupg
brew install pinentry-mac
brew install grc
brew install nkf
brew install chrome-cli
brew install parallel
brew install slackcat
brew install yank
brew install fortune
brew install figlet
brew install asciiquarium
brew install cmatrix
brew install ios-sim
brew install shyaml
brew install pv
brew install iso-codes
brew install ssh-copy-id
brew install terraform_landscape
brew install thors-serializer
brew install uriparser
brew install util-linux
brew install emojify
brew install jsonpp
brew install shared-mime-info
brew install screenfetch
brew install grex
brew install hyperfine
brew install choose-rust
brew install jless
brew install neo-cowsay
brew install sd

# File management tools
brew install tree
brew install tig
brew install git-lfs
brew install watchman
brew install imagemagick
brew install git-secrets
brew install p7zip
brew install automake
brew install git-when-merged
brew install git-quick-stats
brew install ghq
brew install rcm
brew install logrotate
brew install pre-commit
brew install watchexec
brew install gibo
brew install lsd
brew install eza
brew install bat
brew install git-delta
brew install lazygit
brew install sleuthkit
brew install graphicsmagick
brew install graphviz
brew install teller
brew install dust
brew install tokei
brew install duf
brew install broot
brew install detect-secrets
brew install licensefinder
brew install f2
brew install xcodegen

# Process monitoring and management tools
brew install procs
brew install bottom
brew install glances

# Network and Security tools
brew install dnsmasq
brew install tor
brew install nmap
brew install sslscan
brew install nss
brew install stunnel
brew install sqlmap
brew install testssl
brew install duck
brew install whois
brew install bettercap
brew install arp-scan
brew install bandwhich
brew install xh
brew install curlie
brew install httpie
brew install gping

# Documentation tools
brew install cheat
brew install docutils
brew install tldr

# Audio and Video tools
brew install ttyrec
brew install lame
brew install x265
brew install ffmpeg

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
  brew install --cask font-monaspace

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
