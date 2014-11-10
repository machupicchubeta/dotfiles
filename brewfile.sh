#!/bin/sh

brew update
brew upgrade

brew tap homebrew/binary
brew tap homebrew/versions

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
brew install zsh
brew install zsh-completions
brew install terminal-notifier
brew install source-highlight
brew install vim --with-lua --with-luajit
brew install bash-completion
brew install imagemagick
brew link imagemagick
brew install phantomjs
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

# for ruby
brew install openssl
brew install readline
brew install rbenv
brew install ruby-build

# for nokogiri
brew tap homebrew/dupes
brew install libxml2
brew install libxslt
brew install libiconv
brew link libxml2 libxslt libiconv --force

# cask
brew tap caskroom/cask/brew-cask
brew tap caskroom/versions
brew install brew-cask

brew cask install dropbox
brew cask install github
brew cask install google-japanese-ime
brew cask install kobito
brew cask install skype
brew cask install vagrant
brew cask install virtualbox
brew cask install google-chrome-dev
brew cask install firefox-beta
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

brew linkapps

brew cleanup
