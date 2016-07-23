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
brew  cask install dropbox --force
brew  cask install google-japanese-ime --force
brew  cask install vagrant --force
brew  cask install virtualbox --force
brew  cask install google-chrome --force
brew  cask install firefox --force
brew  cask install firefoxdeveloperedition --force
brew  cask install flash --force
brew  cask install evernote --force
brew  cask install slack --force
brew  cask install skitch --force
brew  cask install geektool --force
brew  cask install xquartz --force
brew  cask install java --force
brew  cask install skype --force
brew  cask install knock --force
brew  cask install licecap --force
brew  cask install sublime-text3 --force
brew  cask install atom --force
brew  cask install cloak --force
brew  cask install karabiner --force
brew  cask install slate --force
brew  cask install google-hangouts --force
brew  cask install dash --force
brew  cask install reflector --force
brew  cask install disk-inventory-x --force
brew  cask install itrash --force
brew  cask install cyberduck --force
brew  cask install inssider --force
brew  cask install mou --force
brew  cask install lastpass --force
brew  cask install rubymine --force
brew  cask install qlstephen --force
brew  cask install qlmarkdown --force
brew  cask install quicklook-json --force
brew  cask install quicklook-csv --force
brew  cask install betterzipql --force
brew  cask install suspicious-package --force
brew  cask install packages --force
brew  cask install qlcolorcode --force
brew  cask install qlimagesize --force
brew  cask install hetimazipql --force
brew  cask install iterm2 --force
brew  cask install gyazo --force
brew  cask install 0xed --force
brew  cask install alfred --force
brew  cask install dockertoolbox --force
brew  cask install githubpulse --force
brew  cask install github-desktop --force
brew  cask install paparazzi --force
brew  cask install simplecap --force
brew  cask install box-sync --force
brew  cask install google-chrome-canary --force
brew  cask install soundflower --force
brew  cask install vlc --force
brew  cask install chrome-remote-desktop-host --force
brew  cask install near-lock --force
brew  cask install vivaldi --force
brew  cask install lacona --force
brew  cask install wireshark-chmodbpf --force
brew  cask install sketch --force
brew  cask install flinto --force

brew linkapps

brew cleanup
brew cask cleanup

