#!/bin/sh
sudo chown -R $(whoami):admin /usr/local/

brew update
brew upgrade

brew tap homebrew/binary
brew tap homebrew/versions
brew tap thoughtbot/formulae
brew tap homebrew/completions
brew tap homebrew/dupes

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
brew install bash-completion
brew install imagemagick
brew link imagemagick
brew install phantomjs198
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

# font
# tap caskroom/fonts

# for ruby
brew install openssl
brew link openssl --force
brew install readline
brew install rbenv
brew install ruby-build --HEAD
# install rbenv-bundler

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

brew cask install dropbox
brew cask install google-japanese-ime
brew cask install kobito
brew cask install vagrant
brew cask install virtualbox
# cask install google-chrome-dev
# cask install google-chrome-beta
brew cask install google-chrome
# cask install firefox-beta
brew cask install firefox
brew cask install firefoxdeveloperedition
brew cask install flash
brew cask install evernote
brew cask install slack
brew cask install skitch
brew cask install geektool
brew cask install wireshark
brew cask install xquartz
brew cask install java
brew cask install skype
brew cask install knock
brew cask install licecap
brew cask install sublime-text3
brew cask install atom
brew cask install cloak
brew cask install karabiner
# cask install colors
# cask install witch
# cask install spectacle
brew cask install slate
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
# cask install flashlight
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
brew cask install packer
brew cask install alfred
brew cask install dockertoolbox
brew cask install githubpulse
brew cask install github-desktop
brew cask install paparazzi
brew cask install simplecap
brew cask install sophos-anti-virus-home-edition
brew cask install box-sync
brew cask install google-chrome-canary
brew cask install macvim --with-lua --with-luajit

brew linkapps

brew cleanup
brew cask cleanup

