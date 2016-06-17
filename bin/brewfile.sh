#!/bin/sh
sudo chown -R $(whoami):admin /usr/local/

brew untap homebrew/binary
brew untap homebrew/versions
brew untap thoughtbot/formulae
brew untap homebrew/completions
brew untap homebrew/dupes
brew untap raggi/ale
brew untap neovim/homebrew-neovim
brew untap caskroom/versions
brew untap homebrew/services

brew prune

brew tap homebrew/binary
brew tap homebrew/versions
brew tap thoughtbot/formulae
brew tap homebrew/completions
brew tap homebrew/dupes
brew tap raggi/ale
brew tap neovim/homebrew-neovim
brew tap caskroom/versions
brew tap homebrew/services
# tap caskroom/fonts

brew update
brew upgrade

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
brew install sqlite
brew install z
brew install zsh --disable-etcdir
brew install zsh-completions
brew install terminal-notifier
brew install source-highlight
brew install vim --with-lua --with-luajit
brew install macvim --with-lua --with-luajit
brew install neovim --HEAD
brew install bash-completion
brew install imagemagick
brew unlink imagemagick
brew link imagemagick
brew install phantomjs192
brew install sl
brew install bash
brew install heroku-toolbelt
brew install docker
brew install docker-cloud
brew install boot2docker
brew install python3
brew install jq
brew install awscli
brew install ansible
brew install watch
brew install osquery
brew install direnv
brew install coreutils
brew install gnu-sed
brew install rbenv-default-gems
brew install ttyrec
brew install dnsmasq
brew install ag
brew install jq
brew install spark
brew install tmux
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
brew install rsense
brew install chrome-cli
brew install cscope
brew install postgresql
brew install diff-pdf
brew install parallel
brew install nmap
brew install go
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

# for ruby
brew install openssl
brew unlink openssl
brew link openssl --force
brew install readline
brew install rbenv
brew install ruby-build --HEAD

brew install openssl-osx-ca

# for nokogiri
brew install libxml2
brew install libxslt
brew install libiconv
# link libxml2 libxslt libiconv --force
brew unlink libxml2 libxslt libiconv

# cask
brew cask install dropbox
brew cask install google-japanese-ime
brew cask install vagrant
brew cask install virtualbox
brew cask install google-chrome
brew cask install firefox
brew cask install firefoxdeveloperedition
brew cask install flash
brew cask install evernote
brew cask install slack
brew cask install skitch
brew cask install geektool
brew cask install xquartz
brew cask install java
brew cask install skype
brew cask install knock
brew cask install licecap
brew cask install sublime-text3
brew cask install atom
brew cask install cloak
brew cask install karabiner
brew cask install slate
brew cask install google-hangouts
brew cask install dash
brew cask install reflector
brew cask install disk-inventory-x
brew cask install itrash
brew cask install cyberduck
brew cask install inssider
brew cask install mou
brew cask install lastpass
brew cask install rubymine
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install suspicious-package
brew cask install packages
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install hetimazipql
brew cask install iterm2
brew cask install gyazo
brew cask install 0xed
brew cask install alfred
brew cask install dockertoolbox
brew cask install githubpulse
brew cask install github-desktop
brew cask install paparazzi
brew cask install simplecap
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

brew linkapps

brew cleanup
brew cask cleanup

