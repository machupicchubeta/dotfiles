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
mas purchase 1284863847 # Unsplash Wallpapers
mas purchase 1295203466 # Microsoft Remote Desktop
mas purchase 1549370672 # Raindrop.io Safari extensions
mas purchase 1569813296 # 1Password Safari extensions
mas purchase 411213048 # LadioCast
mas purchase 414298354 # ToyViewer
mas purchase 497799835 # Xcode
mas purchase 899247664 # TestFlight

sudo xcodebuild -license accept

brew tap Code-Hex/tap
brew tap auth0/auth0-cli
brew tap buo/cask-upgrade
brew tap clementtsang/bottom
brew tap github/gh
brew tap mongodb/brew
brew tap olets/tap
brew tap puma/puma
brew tap spectralops/tap
brew tap thoughtbot/formulae
brew tap universal-ctags/universal-ctags

brew update
brew upgrade --fetch-HEAD

# Libraries that used in Ruby or so, or used to build from source code
## This paragraph is arranged in the order in which they need to be installed.
brew install openssl@3
brew install readline
brew install m4
brew install autoconf
brew install bison
brew install libyaml
brew install gmp
brew install libffi

brew install libressl

# Libraries, Software Runtime Environments for installing Ruby with YJIT
## This paragraph is arranged in the order in which they need to be installed.
brew install sqlite
brew install python@3
brew install llvm@16
brew install rust

# GNU command line tools
brew install bash
brew install binutils
brew install coreutils
brew install diffutils
brew install ed
# brew install emacs # This is installed in a text editor paragraph.
brew install findutils
brew install gawk
brew install gnu-getopt
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnutls
brew install gpatch
brew install grep
brew install gzip
brew install less
# brew install m4 # This is installed in a library paragraph.
brew install make
# brew install nano # This is installed in a text editor paragraph.
brew install screen
brew install watch
brew install wdiff
brew install wget

if [ "$(uname -m)" = "x86_64" ]; then
  brew install gdb
fi

# Use the newer version tools instead of the version shipped by macOS
brew install curl
brew install file-formula
brew install git
# brew install openssh # Kick out "openssh"; d911522cc87c65ecef011e3bb2d58574e97bcae7
# brew install perl # This is installed in a programming language paragraph.
# brew install python@3 # This is installed in a library paragraph.
brew install rsync
brew install sl
# brew install sqlite # This is installed in a library paragraph.
brew install subversion
brew install unzip
# brew install vim # This is installed in a text editor paragraph.
brew install zlib
brew install zsh

# Programming languages, Software Development Environments, its environment management or build tools and libraries
brew install cmake
brew install gcc
brew install gdbm

## This paragraph is arranged in the order in which they need to be installed.
brew install mise
brew install asdf
brew install rustup-init
# brew install rust # This is installed in a library paragraph.
brew install ruby-build
brew install ruby
brew install node-build --HEAD
brew link node-build
brew install node
brew install openjdk
brew install kotlin
brew install lua
brew install luarocks
brew install erlang
brew install elixir

brew install coffeescript
brew install ghostscript
brew install go
brew install ocaml
brew install perl
# brew install python@3 # This is installed in a library paragraph.
brew install yarn

brew install ccusage
brew install esbuild
brew install golang-migrate
brew install gradle
brew install mosquitto
brew install protobuf
brew install terraform-lsp
brew install tree-sitter
brew install v8
brew install vite
brew install wasmtime
brew install webpack

# Libraries used in Nokogiri gem
## This paragraph is arranged in the order in which they need to be installed.
brew install libxml2
brew install libxslt
brew install libiconv

# Text Editor and its extensions
## This paragraph is arranged in the order in which they need to be installed.
brew install neovim
brew install neovide

brew install cscope
brew install emacs
brew install nano
brew install robotsandpencils/made/xcodes
brew install source-highlight
brew install swift
brew install universal-ctags --HEAD
brew link universal-ctags
brew install vim

# Shell extensions
brew install bash-completion
brew install reattach-to-user-namespace
brew install sheldon
brew install starship
brew install terminal-notifier
brew install tmux
brew install z
brew install zellij
brew install zsh-abbr
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting

# Searching and Finding tools
brew install fd
brew install fzf
brew install peco
brew install pick
brew install ripgrep
brew install ripgrep-all
brew install the_silver_searcher

# Data stores
brew install memcached
brew install mongodb-community
brew install mysql
brew install postgresql@16
brew install redis

# Web Application Servers
brew install puma-dev

# Virtual Machines and Infrastructure tools
brew install ansible
brew install helm
brew install lazydocker
brew install minikube
brew install wrkflw

# XaaS tools
brew install act
brew install amazon-ecs-cli
brew install auth0
brew install aws-shell
brew install aws-vault
brew install awscli
brew install azure-cli
brew install circleci
brew install codex
brew install doctl
brew install firebase-cli
brew install flyctl
brew install gemini-cli
brew install gh
brew install github-mcp-server
brew install glab
brew install heroku
brew install mongocli

# Linters and Code Formatters
brew install ansible-lint
brew install cfn-lint
brew install eslint
brew install flow
brew install golangci-lint
brew install semgrep
brew install shellcheck
brew install swiftformat
brew install swiftlint

# Command-line tools
brew install asciiquarium
brew install choose-rust
brew install chrome-cli
brew install cmatrix
brew install direnv
brew install emojify
brew install figlet
brew install fortune
brew install gnupg
brew install grc
brew install grex
brew install gti
brew install hyperfine
brew install ios-sim
brew install iso-codes
brew install jless
brew install jq
brew install jsonpp
brew install neo-cowsay
brew install nkf
brew install parallel
brew install pinentry-mac
brew install pv
brew install screenfetch
brew install sd
brew install shared-mime-info
brew install shyaml
brew install silicon
brew install slackcat
brew install spark
brew install ssh-copy-id
brew install terraform_landscape
brew install thors-serializer
brew install uriparser
brew install util-linux
brew install yank

# File management tools
brew install automake
brew install bat
brew install broot
brew install detect-secrets
brew install duf
brew install dust
brew install eza
brew install f2
brew install ghq
brew install gibo
brew install git-delta
brew install git-lfs
brew install git-quick-stats
brew install git-secrets
brew install git-when-merged
brew install graphicsmagick
brew install graphviz
brew install imagemagick
brew install lazygit
brew install licensefinder
brew install logrotate
brew install lsd
brew install p7zip
brew install pre-commit
brew install rcm
brew install sleuthkit
brew install teller
brew install tig
brew install tokei
brew install tree
brew install watchexec
brew install watchman
brew install xcodegen

# Process monitoring and management tools
brew install bottom
brew install glances
brew install procs

# Network and Security tools
brew install arp-scan
brew install bandwhich
brew install bettercap
brew install curlie
brew install dnsmasq
brew install duck
brew install gping
brew install httpie
brew install nmap
brew install nss
brew install somo
brew install sqlmap
brew install sslscan
brew install stunnel
brew install testssl
brew install tor
brew install whois
brew install xh

# Documentation tools
brew install cheat
brew install docutils
brew install tldr

# Audio and Video tools
brew install ffmpeg
brew install lame
brew install ttyrec
brew install x265

: "${CPU_BRAND:=$(/usr/sbin/sysctl -n machdep.cpu.brand_string)}"

if [ -n "$(echo $CPU_BRAND | grep -o 'Apple')" -a "$(uname -m)" = "x86_64" ]; then
  echo -e "Skip universal casks installation for under x86_64 arch settings.\nOn Apple silicon, please run under arm64 arch settings."
else
  brew install --cask 1password
  brew install --cask 1password-cli
  brew install --cask aerial
  brew install --cask alacritty
  brew install --cask alfred
  brew install --cask amazon-chime
  brew install --cask android-commandlinetools
  brew install --cask arc
  brew install --cask betterzip
  brew install --cask blackhole-16ch
  brew install --cask blackhole-2ch
  brew install --cask blackhole-64ch
  brew install --cask blisk
  brew install --cask brave-browser
  brew install --cask canva
  brew install --cask chatgpt
  brew install --cask chrome-remote-desktop-host
  brew install --cask chromedriver
  brew install --cask claude
  brew install --cask clickup
  brew install --cask cloudflare-warp
  brew install --cask container
  brew install --cask coscreen
  brew install --cask cursor
  brew install --cask cyberduck
  brew install --cask dash
  brew install --cask deepl
  brew install --cask devtoys
  brew install --cask discord
  brew install --cask disk-inventory-x
  brew install --cask docker-desktop
  brew install --cask dotnet-sdk
  brew install --cask drawio
  brew install --cask dropbox
  brew install --cask dynamodb-local
  brew install --cask encryptme
  brew install --cask evernote
  brew install --cask figma
  brew install --cask firefox
  brew install --cask firefox@developer-edition
  brew install --cask fliqlo
  brew install --cask fontforge-app
  brew install --cask framer
  brew install --cask gather
  brew install --cask geektool
  brew install --cask ghostty
  brew install --cask github
  brew install --cask google-chrome
  brew install --cask google-chrome@canary
  brew install --cask google-drive
  brew install --cask google-earth-pro
  brew install --cask google-japanese-ime
  brew install --cask gyazo
  brew install --cask hyper
  brew install --cask inssider
  brew install --cask iterm2
  brew install --cask itermai
  brew install --cask karabiner-elements
  brew install --cask kiro
  brew install --cask lens
  brew install --cask licecap
  brew install --cask marvel
  brew install --cask messenger
  brew install --cask microsoft-edge
  brew install --cask microsoft-office
  brew install --cask microsoft-teams
  brew install --cask miro
  brew install --cask mmhmm
  brew install --cask ngrok
  brew install --cask notion
  brew install --cask notion-calendar
  brew install --cask obsidian
  brew install --cask osquery
  brew install --cask packages
  brew install --cask paparazzi
  brew install --cask postman
  brew install --cask raindropio
  brew install --cask raycast
  brew install --cask reflector
  brew install --cask session-manager-plugin
  brew install --cask sketch
  brew install --cask skype
  brew install --cask slack
  brew install --cask slack-cli
  brew install --cask spotify
  brew install --cask sublime-text
  brew install --cask suspicious-package
  brew install --cask temurin
  brew install --cask thebrowsercompany-dia
  brew install --cask vagrant
  brew install --cask visual-studio-code
  brew install --cask vivaldi
  brew install --cask vlc
  brew install --cask warp
  brew install --cask wezterm
  brew install --cask wireshark-app
  brew install --cask xcodes-app
  brew install --cask xquartz
  brew install --cask zoom

  brew install --cask font-3270-nerd-font
  brew install --cask font-agave-nerd-font
  brew install --cask font-anonymice-nerd-font
  brew install --cask font-blex-mono-nerd-font
  brew install --cask font-cascadia-code
  brew install --cask font-cascadia-code-nf
  brew install --cask font-cascadia-code-pl
  brew install --cask font-cascadia-mono
  brew install --cask font-cascadia-mono-nf
  brew install --cask font-cascadia-mono-pl
  brew install --cask font-fira-code
  brew install --cask font-fira-code-nerd-font
  brew install --cask font-fira-mono-nerd-font
  brew install --cask font-go-mono-nerd-font
  brew install --cask font-hack-nerd-font
  brew install --cask font-hasklig
  brew install --cask font-hasklug-nerd-font
  brew install --cask font-ibm-plex-math
  brew install --cask font-ibm-plex-mono
  brew install --cask font-ibm-plex-sans
  brew install --cask font-ibm-plex-sans-condensed
  brew install --cask font-ibm-plex-sans-jp
  brew install --cask font-ibm-plex-serif
  brew install --cask font-inconsolata-go-nerd-font
  brew install --cask font-inconsolata-nerd-font
  brew install --cask font-intel-one-mono
  brew install --cask font-iosevka
  brew install --cask font-iosevka-nerd-font
  brew install --cask font-iosevka-slab
  brew install --cask font-iosevka-term-nerd-font
  brew install --cask font-jetbrains-mono
  brew install --cask font-jetbrains-mono-nerd-font
  brew install --cask font-lilex
  brew install --cask font-lilex-nerd-font
  brew install --cask font-monaspace
  brew install --cask font-monaspace-nerd-font
  brew install --cask font-monoid
  brew install --cask font-monoid-nerd-font
  brew install --cask font-m+-nerd-font
  brew install --cask font-moralerspace
  brew install --cask font-new-york
  brew install --cask font-noto-nerd-font
  brew install --cask font-plemol-jp
  brew install --cask font-plemol-jp-hs
  brew install --cask font-plemol-jp-nf
  brew install --cask font-sf-compact
  brew install --cask font-sf-mono
  brew install --cask font-sf-mono-for-powerline
  brew install --cask font-sf-pro
  brew install --cask font-victor-mono
  brew install --cask font-victor-mono-nerd-font

  brew cu --all --cleanup --yes
fi

if [ "$(uname -m)" = "x86_64" ]; then
  brew install --cask soundflower
  brew install --cask virtualbox

  brew cu soundflower --cleanup
  brew cu virtualbox --cleanup
elif [ "$(uname -m)" = "arm64" ]; then
  brew install --cask fertigt-slate
fi

brew cleanup --prune=0 -s
