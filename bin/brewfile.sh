#!/bin/sh

brew update
brew upgrade

brew tap homebrew/binary
brew tap homebrew/versions
brew tap thoughtbot/formulae

brew install git
brew install tig
brew install hub
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
brew install bash-completion
brew install imagemagick
brew link imagemagick
# install phantomjs
brew install phantomjs182
brew install sl
brew install bash
brew install heroku-toolbelt
brew install docker
brew install boot2docker
brew install python
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
# install packer
brew install rmtrash
brew install tor
brew install nkf
brew install automake
brew install fontforge
brew install lastpass-cli
brew install p7zip
brew install pick

# font
# tap caskroom/fonts

# for ruby
brew install openssl
brew link openssl --force
brew install readline
brew install rbenv
brew install ruby-build

brew tap raggi/ale
brew install openssl-osx-ca

# for nokogiri
brew tap homebrew/dupes
brew install libxml2
brew install libxslt
brew install libiconv
#link libxml2 libxslt libiconv --force
brew unlink libxml2 libxslt libiconv

# cask
brew tap caskroom/versions
brew install caskroom/cask/brew-cask

brew cask install dropbox
brew cask install github
brew cask install google-japanese-ime
brew cask install kobito
brew cask install skype
brew cask install vagrant
brew cask install virtualbox
# cask install google-chrome-dev
brew cask install google-chrome-beta
brew cask install firefox-beta
brew cask install firefoxdeveloperedition
brew cask install flash
brew cask install evernote
brew cask install slack
brew cask install skitch
brew cask install geektool
brew cask install wireshark
brew cask install xquartz
brew cask install java
brew cask install sourcetree
brew cask install skype
brew cask install knock
brew cask install licecap
brew cask install sublime-text3
brew cask install atom
brew cask install cloak
# cask install karabiner
# cask install colors
# cask install witch
# cask install spectacle
# cask install slate
brew cask install google-hangouts
brew cask install dash
brew cask install reflector
brew cask install disk-inventory-x
# cask install google-plus-auto-backup
brew cask install itrash
# cask install minitube
brew cask install cyberduck
brew cask install inssider
brew cask install mou
brew cask install lastpass
brew cask install rubymine

brew linkapps

brew cleanup
