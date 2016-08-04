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
brew install docker-swarm
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
brew install git-when-merged

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
brew cask uninstall dropbox --force && brew  cask install dropbox
brew cask uninstall google-japanese-ime --force && brew  cask install google-japanese-ime
brew cask uninstall vagrant --force && brew  cask install vagrant
brew cask uninstall virtualbox --force && brew  cask install virtualbox
brew cask uninstall google-chrome --force && brew  cask install google-chrome
brew cask uninstall firefox --force && brew  cask install firefox
brew cask uninstall firefoxdeveloperedition --force && brew  cask install firefoxdeveloperedition
brew cask uninstall flash --force && brew  cask install flash
brew cask uninstall evernote --force && brew  cask install evernote
brew cask uninstall slack --force && brew  cask install slack
brew cask uninstall skitch --force && brew  cask install skitch
brew cask uninstall geektool --force && brew  cask install geektool
brew cask uninstall xquartz --force && brew  cask install xquartz
brew cask uninstall java --force && brew  cask install java
brew cask uninstall skype --force && brew  cask install skype
brew cask uninstall knock --force && brew  cask install knock
brew cask uninstall licecap --force && brew  cask install licecap
brew cask uninstall sublime-text --force && brew  cask install sublime-text
brew cask uninstall atom --force && brew  cask install atom
brew cask uninstall cloak --force && brew  cask install cloak
brew cask uninstall karabiner --force && brew  cask install karabiner
brew cask uninstall slate --force && brew  cask install slate
brew cask uninstall google-hangouts --force && brew  cask install google-hangouts
brew cask uninstall dash --force && brew  cask install dash
brew cask uninstall reflector --force && brew  cask install reflector
brew cask uninstall disk-inventory-x --force && brew  cask install disk-inventory-x
brew cask uninstall itrash --force && brew  cask install itrash
brew cask uninstall cyberduck --force && brew  cask install cyberduck
brew cask uninstall inssider --force && brew  cask install inssider
brew cask uninstall lastpass --force && brew  cask install lastpass
brew cask uninstall rubymine --force && brew  cask install rubymine
brew cask uninstall qlstephen --force && brew  cask install qlstephen
brew cask uninstall qlmarkdown --force && brew  cask install qlmarkdown
brew cask uninstall quicklook-json --force && brew  cask install quicklook-json
brew cask uninstall quicklook-csv --force && brew  cask install quicklook-csv
brew cask uninstall betterzipql --force && brew  cask install betterzipql
brew cask uninstall suspicious-package --force && brew  cask install suspicious-package
brew cask uninstall packages --force && brew  cask install packages
brew cask uninstall qlcolorcode --force && brew  cask install qlcolorcode
brew cask uninstall qlimagesize --force && brew  cask install qlimagesize
brew cask uninstall hetimazipql --force && brew  cask install hetimazipql
brew cask uninstall iterm2 --force && brew  cask install iterm2
brew cask uninstall gyazo --force && brew  cask install gyazo
brew cask uninstall 0xed --force && brew  cask install 0xed
brew cask uninstall alfred --force && brew  cask install alfred
brew cask uninstall docker-toolbox --force && brew  cask install docker-toolbox
brew cask uninstall githubpulse --force && brew  cask install githubpulse
brew cask uninstall github-desktop --force && brew  cask install github-desktop
brew cask uninstall paparazzi --force && brew  cask install paparazzi
brew cask uninstall box-sync --force && brew  cask install box-sync
brew cask uninstall google-chrome-canary --force && brew  cask install google-chrome-canary
brew cask uninstall soundflower --force && brew  cask install soundflower
brew cask uninstall vlc --force && brew  cask install vlc
brew cask uninstall chrome-remote-desktop-host --force && brew  cask install chrome-remote-desktop-host
brew cask uninstall near-lock --force && brew  cask install near-lock
brew cask uninstall vivaldi --force && brew  cask install vivaldi
brew cask uninstall lacona --force && brew  cask install lacona
brew cask uninstall wireshark-chmodbpf --force && brew  cask install wireshark-chmodbpf
brew cask uninstall sketch --force && brew  cask install sketch
brew cask uninstall flinto --force && brew  cask install flinto
brew cask uninstall blisk --force && brew  cask install blisk

brew linkapps

brew cleanup
brew cask cleanup

