#!/bin/bash
set -u

sudo chown -R $(whoami):admin $(brew --prefix)/*
cd $(brew --repository) && git checkout master
brew install mas
mas install 497799835 # Xcode
sudo xcodebuild -license
xcode-select --install

mas install 411213048 # LadioCast
mas install 1284863847 # Unsplash Wallpapers

brew tap thoughtbot/formulae
brew tap homebrew/cask-versions
brew tap homebrew/services
brew tap homebrew/bundle
brew tap puma/puma
brew tap kylef/formulae
brew tap homebrew/cask-fonts
brew tap buo/cask-upgrade
brew tap universal-ctags/universal-ctags
brew tap heroku/brew
brew tap github/gh
brew tap mongodb/brew
brew tap clementtsang/bottom

brew update
brew upgrade --fetch-HEAD

# sleuthkit
brew install --cask adoptopenjdk
brew install --cask java
brew install --cask adoptopenjdk8
brew install sleuthkit

brew install cmake
brew install git
brew install tig
brew install hub
brew install git-lfs
brew install wget
brew install curl
brew install mysql
brew install redis
brew install memcached
brew install node
brew install node-build --HEAD
brew install nodenv
brew install watchman
brew install sqlite
brew install z
brew install zsh
brew install zsh-completions
brew install zsh-navigation-tools
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zplug
brew install terminal-notifier
brew install source-highlight
brew unlink vim
brew install macvim
brew unlink macvim
brew install vim
brew link vim
brew install luarocks
brew install neovim
brew install bash-completion
brew install imagemagick
brew install sl
brew install gti
brew install bash
brew install heroku
brew install pyenv
brew install jq
brew install ansible
brew install watch
brew install direnv
brew install coreutils
brew install gnu-sed
brew install ttyrec
brew install dnsmasq
brew install ag
brew install spark
brew install tmux
brew install screen
brew install reattach-to-user-namespace
# brew install gnupg
brew install grc
brew install tor
brew install nkf
brew install automake
brew install fontforge
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
brew install postgresql
brew install parallel
brew install nmap
brew install go
brew install goenv
brew install slackcat
brew install lame
brew install vault
brew install yank
brew install v8
brew install git-secrets
brew install sslscan
brew install wireshark
brew install git-when-merged
brew install fortune
brew install cowsay
brew install figlet
brew install asciiquarium
brew install cmatrix
brew install pow
brew install yarn
brew install nss
brew install cheat
brew install ripgrep
brew install ios-sim
brew install swift
brew install swiftenv
brew install swiftlint
brew install terraform
brew install x265
brew install puma-dev
brew install stunnel
brew install sqlmap
brew install rust
brew install plenv
brew install shyaml
brew install gpg
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
brew install terragrunt
brew install kibana
brew install protobuf
brew install pv
brew install ccze
brew install git-secrets
brew install testssl
brew install kubernetes-cli
brew install kubernetes-helm
brew install gradle
brew install azure-cli
brew install bench
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
brew install json11
brew install duck
brew install doctl
brew install git-quick-stats
brew install elasticsearch
brew install peco
brew install fzf
brew install coffeescript
brew install zlib
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
brew install zoxide
brew install exa
brew install bat
brew install git-delta
brew install procs
brew install sd
brew install lazydocker
brew install lazygit

# for ruby
brew install openssl
brew install readline
brew install ruby-build
brew install rbenv
brew install rbenv-default-gems

brew install libressl

# for nokogiri
brew install libxml2
brew unlink libxml2
brew install libxslt
brew unlink libxslt
brew install libiconv
brew unlink libiconv

# cask
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask iterm2
brew install --cask google-japanese-ime
brew install --cask google-chrome
brew install --cask docker
brew install --cask dropbox
brew install --cask vagrant
brew install --cask virtualbox
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
brew install --cask atom
brew install --cask encryptme
brew install --cask karabiner-elements
brew install --cask slate
brew install --cask google-hangouts
brew install --cask dash
brew install --cask reflector
brew install --cask disk-inventory-x
brew install --cask cyberduck
brew install --cask inssider
brew install --cask qlstephen
brew install --cask qlmarkdown
brew install --cask quicklook-json
brew install --cask quicklook-csv
brew install --cask betterzip
brew install --cask suspicious-package
brew install --cask packages
brew install --cask qlcolorcode
brew install --cask gyazo
brew install --cask 0xed
brew install --cask alfred
brew install --cask githubpulse
brew install --cask github
brew install --cask paparazzi
brew install --cask box-sync
brew install --cask google-chrome-canary
brew install --cask soundflower
brew install --cask vlc
brew install --cask chrome-remote-desktop-host
brew install --cask vivaldi
brew install --cask lacona
brew install --cask wireshark-chmodbpf
brew install --cask sketch
brew install --cask flinto
brew install --cask blisk
brew install --cask gitter
brew install --cask flux
brew install --cask gpg-suite
brew install --cask fliqlo
brew install --cask google-earth-pro
brew install --cask zoomus
brew install --cask spotify
brew install --cask chromedriver
brew install --cask microsoft-remote-desktop-beta
brew install --cask dotnet
brew install --cask visual-studio
brew install --cask visual-studio-code
brew install --cask android-sdk
brew install --cask android-studio
brew install --cask dynamodb-local
brew install --cask phantomjs
brew install --cask discord
brew install --cask aerial
brew install --cask figma
brew install --cask miro-formerly-realtimeboard
brew install --cask amazon-chime
brew install --cask osquery
brew install --cask lens
brew install --cask framer
brew install --cask kite
brew install --cask deepl
brew install --cask marvel
brew install --cask brave-browser
brew install --cask raindropio
brew install --cask postman
brew install --cask messenger

# fonts
brew install --cask font-fira-code
brew install --cask font-firacode-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask font-victor-mono
brew install --cask font-victor-mono-nerd-font
brew install --cask font-monoid
brew install --cask font-monoid-nerd-font
brew install --cask font-lilex
brew install --cask font-iosevka
brew install --cask font-iosevka-slab
brew install --cask font-iosevka-nerd-font
brew install --cask font-hasklig
brew install --cask font-cascadia-code
brew install --cask font-cascadia-code-pl
brew install --cask font-jetbrains-mono
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-source-han-code-jp

brew cu --all --cleanup --yes
brew cleanup --prune=0 -s
