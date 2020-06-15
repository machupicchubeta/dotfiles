#!/bin/bash
set -u

sudo chown -R $(whoami):admin $(brew --prefix)/*
cd $(brew --repository) && git checkout master
brew install mas
mas install 497799835 # Xcode
sudo xcodebuild -license
xcode-select --install

mas install 411213048 # LadioCast

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

brew update
brew upgrade --fetch-HEAD

# sleuthkit
brew cask install adoptopenjdk
brew cask install java
brew cask install adoptopenjdk8
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
brew install node-build
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
brew install osquery
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
brew install rmtrash
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
brew install googler
brew install translate-shell
brew install yank
brew install sshrc
brew install v8
brew install git-secrets
brew install sslscan
brew install diff-so-fancy
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
brew install rustup

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
brew cask install 1password
brew cask install iterm2
brew cask install google-japanese-ime
brew cask install google-chrome
brew cask install docker
brew cask install dropbox
brew cask install vagrant
brew cask install virtualbox
brew cask install firefox
brew cask install firefox-developer-edition
brew cask install flash-npapi
brew cask install evernote
brew cask install slack
brew cask install skitch
brew cask install geektool
brew cask install xquartz
brew cask install skype
brew cask install knock
brew cask install licecap
brew cask install sublime-text
brew cask install atom
brew cask install encryptme
brew cask install karabiner-elements
brew cask install slate
brew cask install google-hangouts
brew cask install dash
brew cask install reflector
brew cask install disk-inventory-x
brew cask install itrash
brew cask install cyberduck
brew cask install inssider
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install betterzip
brew cask install suspicious-package
brew cask install packages
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install gyazo
brew cask install 0xed
brew cask install alfred
brew cask install githubpulse
brew cask install github
brew cask install paparazzi
brew cask install box-sync
brew cask install google-chrome-canary
brew cask install soundflower
brew cask install vlc
brew cask install chrome-remote-desktop-host
brew cask install near-lock
brew cask install vivaldi
brew cask install lacona
brew cask install wireshark-chmodbpf
brew cask install sketch
brew cask install flinto
brew cask install blisk
brew cask install gitter
brew cask install flux
brew cask install gpg-suite
brew cask install fliqlo
brew cask install google-earth-pro
brew cask install zoomus
brew cask install spotify
brew cask install chromedriver
brew cask install microsoft-remote-desktop-beta
brew cask install dotnet
brew cask install visual-studio
brew cask install visual-studio-code
brew cask install android-sdk
brew cask install android-studio
brew cask install dynamodb-local
brew cask install phantomjs
brew cask install discord
brew cask install aerial
brew cask install figma
brew cask install miro-formerly-realtimeboard
brew cask install amazon-chime

# fonts
brew cask install font-fira-code
brew cask install font-firacode-nerd-font
brew cask install font-hack-nerd-font

# xquartz required
brew install diff-pdf

brew cu --all --cleanup --yes
brew cleanup --prune=0 -s
