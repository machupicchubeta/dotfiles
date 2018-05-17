#!/bin/sh
set -eu
sudo chown -R $(whoami):admin $(brew --prefix)/*
cd $(brew --repository) && git checkout master
cd -

if [[ $(brew tap | grep thoughtbot/formulae) ]]; then brew untap thoughtbot/formulae; fi
if [[ $(brew tap | grep raggi/ale) ]]; then brew untap raggi/ale; fi
if [[ $(brew tap | grep neovim/homebrew-neovim) ]]; then brew untap neovim/homebrew-neovim; fi
if [[ $(brew tap | grep caskroom/versions) ]]; then brew untap caskroom/versions; fi
if [[ $(brew tap | grep homebrew/services) ]]; then brew untap homebrew/services; fi
if [[ $(brew tap | grep homebrew/bundle) ]]; then brew untap homebrew/bundle; fi
if [[ $(brew tap | grep puma/puma) ]]; then brew untap puma/puma; fi
if [[ $(brew tap | grep kylef/formulae) ]]; then brew untap kylef/formulae; fi
if [[ $(brew tap | grep caskroom/fonts) ]]; then brew untap caskroom/fonts; fi
if [[ $(brew tap | grep buo/cask-upgrade) ]]; then brew untap buo/cask-upgrade; fi

brew prune

brew tap thoughtbot/formulae
brew tap raggi/ale
brew tap neovim/homebrew-neovim
brew tap caskroom/versions
brew tap homebrew/services
brew tap homebrew/bundle
brew tap puma/puma
brew tap kylef/formulae
brew tap caskroom/fonts
brew tap buo/cask-upgrade

brew update
brew upgrade --fetch-HEAD

brew install git
brew install tig
brew install hub
brew install git-lfs
brew install wget
brew install curl --force
brew link curl --force
brew install mysql
brew install redis
brew install memcached
brew install node
brew install node-build --HEAD
brew install nodenv --HEAD
brew install watchman
brew install sqlite --force
brew link sqlite --force
brew install z
brew install zsh
brew install zsh-completions
brew install zsh-navigation-tools
brew install terminal-notifier
brew install source-highlight
if ! [[ $(brew info vim | grep 'Not installed') ]]; then brew unlink vim; fi
brew install vim --with-luajit --with-python3 --HEAD --with-override-system-vi
brew link vim --force
if ! [[ $(brew info macvim | grep 'Not installed') ]]; then brew unlink macvim; fi
brew install macvim --with-luajit
brew link macvim --force
brew install neovim --HEAD
brew install bash-completion
brew install imagemagick
if ! [[ $(brew info imagemagick | grep 'Not installed') ]]; then brew unlink imagemagick; fi
brew link imagemagick --force
brew install phantomjs
brew install sl
brew install bash
brew install heroku-toolbelt
brew install pyenv --HEAD
brew install jq
brew install awscli
brew install aws-shell
brew install ansible
brew install watch
brew install osquery
brew install direnv
brew install coreutils
brew install gnu-sed
brew install ttyrec
brew install dnsmasq
brew install ag
brew install jq
brew install spark
brew install tmux
brew install screen
brew install reattach-to-user-namespace
# install gnupg
# install grc
brew install rmtrash
brew install tor
brew install nkf
brew install automake
brew install fontforge
brew install lastpass-cli --with-pinentry --with-doc
brew install p7zip
brew install pick
brew install ctags
brew install tree
brew install chromedriver
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
brew install mas
brew install wireshark
brew install git-when-merged
brew install fortune
brew install cowsay
brew install figlet
brew install asciiquarium
brew install cmatrix
brew install pow
brew install yarn
brew install nss --force
brew link nss --force
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
brew install perl-build
brew install shyaml
brew install gpg
brew install shellcheck
brew install ghq
brew install flow
if ! [[ $(brew info ocaml | grep 'Not installed') ]]; then brew unlink ocaml; fi
brew install ocaml
brew link ocaml
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

# for ruby
brew install openssl --force
if ! [[ $(brew info openssl | grep 'Not installed') ]]; then brew unlink openssl; fi
brew link openssl --force
brew install readline --force
brew install ruby-build --HEAD
brew install rbenv --HEAD
brew install rbenv-default-gems

brew install openssl-osx-ca
brew install libressl

# for nokogiri
brew install libxml2 --force
brew install libxslt --force
brew install libiconv --force
# link libxml2 libxslt libiconv --force
if ! [[ $(brew info libxml2 | grep 'Not installed') ]]; then brew unlink libxml2; fi
if ! [[ $(brew info libxslt | grep 'Not installed') ]]; then brew unlink libxslt; fi
if ! [[ $(brew info libiconv | grep 'Not installed') ]]; then brew unlink libiconv; fi

# cask
brew cask install dropbox
brew cask install google-japanese-ime
brew cask install vagrant
brew cask install virtualbox
brew cask install google-chrome
brew cask install firefox
brew cask install firefox-developer-edition
brew cask install flash-npapi
brew cask install evernote
brew cask install slack
brew cask install skitch
brew cask install geektool
brew cask install xquartz
brew cask install java
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
brew cask install lastpass
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install betterzip
brew cask install suspicious-package
brew cask install packages
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install hetimazipql
brew cask install iterm2
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
brew cask install docker
brew cask install 1password
brew cask install gpg-suite
brew cask install fliqlo
brew cask install aerial
brew cask install google-earth-web-plugin
brew cask install google-earth-pro
brew cask install zoomus
brew cask install spotify

# fonts
brew cask install font-fira-code
brew cask install font-firacode-nerd-font

# xquartz required
brew install diff-pdf

brew cu --all --cleanup --yes

brew cleanup
brew cask cleanup
