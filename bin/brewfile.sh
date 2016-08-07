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
if [[ $(brew cask info dropbox | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep dropbox) ]]; then brew cask uninstall dropbox --force && brew cask install dropbox; else brew cask install dropbox; fi; else echo 'dropbox is currently the newest version is available'; fi
if [[ $(brew cask info google-japanese-ime | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep google-japanese-ime) ]]; then brew cask uninstall google-japanese-ime --force && brew cask install google-japanese-ime; else brew cask install google-japanese-ime; fi; else echo 'google-japanese-ime is currently the newest version is available'; fi
if [[ $(brew cask info vagrant | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep vagrant) ]]; then brew cask uninstall vagrant --force && brew cask install vagrant; else brew cask install vagrant; fi; else echo 'vagrant is currently the newest version is available'; fi
if [[ $(brew cask info virtualbox | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep virtualbox) ]]; then brew cask uninstall virtualbox --force && brew cask install virtualbox; else brew cask install virtualbox; fi; else echo 'virtualbox is currently the newest version is available'; fi
if [[ $(brew cask info google-chrome | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep google-chrome) ]]; then brew cask uninstall google-chrome --force && brew cask install google-chrome; else brew cask install google-chrome; fi; else echo 'google-chrome is currently the newest version is available'; fi
if [[ $(brew cask info firefox | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep firefox) ]]; then brew cask uninstall firefox --force && brew cask install firefox; else brew cask install firefox; fi; else echo 'firefox is currently the newest version is available'; fi
if [[ $(brew cask info firefoxdeveloperedition | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep firefoxdeveloperedition) ]]; then brew cask uninstall firefoxdeveloperedition --force && brew cask install firefoxdeveloperedition; else brew cask install firefoxdeveloperedition; fi; else echo 'firefoxdeveloperedition is currently the newest version is available'; fi
if [[ $(brew cask info flash | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep flash) ]]; then brew cask uninstall flash --force && brew cask install flash; else brew cask install flash; fi; else echo 'flash is currently the newest version is available'; fi
if [[ $(brew cask info evernote | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep evernote) ]]; then brew cask uninstall evernote --force && brew cask install evernote; else brew cask install evernote; fi; else echo 'evernote is currently the newest version is available'; fi
if [[ $(brew cask info slack | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep slack) ]]; then brew cask uninstall slack --force && brew cask install slack; else brew cask install slack; fi; else echo 'slack is currently the newest version is available'; fi
if [[ $(brew cask info skitch | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep skitch) ]]; then brew cask uninstall skitch --force && brew cask install skitch; else brew cask install skitch; fi; else echo 'skitch is currently the newest version is available'; fi
if [[ $(brew cask info geektool | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep geektool) ]]; then brew cask uninstall geektool --force && brew cask install geektool; else brew cask install geektool; fi; else echo 'geektool is currently the newest version is available'; fi
if [[ $(brew cask info xquartz | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep xquartz) ]]; then brew cask uninstall xquartz --force && brew cask install xquartz; else brew cask install xquartz; fi; else echo 'xquartz is currently the newest version is available'; fi
if [[ $(brew cask info java | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep java) ]]; then brew cask uninstall java --force && brew cask install java; else brew cask install java; fi; else echo 'java is currently the newest version is available'; fi
if [[ $(brew cask info skype | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep skype) ]]; then brew cask uninstall skype --force && brew cask install skype; else brew cask install skype; fi; else echo 'skype is currently the newest version is available'; fi
if [[ $(brew cask info knock | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep knock) ]]; then brew cask uninstall knock --force && brew cask install knock; else brew cask install knock; fi; else echo 'knock is currently the newest version is available'; fi
if [[ $(brew cask info licecap | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep licecap) ]]; then brew cask uninstall licecap --force && brew cask install licecap; else brew cask install licecap; fi; else echo 'licecap is currently the newest version is available'; fi
if [[ $(brew cask info sublime-text | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep sublime-text) ]]; then brew cask uninstall sublime-text --force && brew cask install sublime-text; else brew cask install sublime-text; fi; else echo 'sublime-text is currently the newest version is available'; fi
if [[ $(brew cask info atom | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep atom) ]]; then brew cask uninstall atom --force && brew cask install atom; else brew cask install atom; fi; else echo 'atom is currently the newest version is available'; fi
if [[ $(brew cask info cloak | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep cloak) ]]; then brew cask uninstall cloak --force && brew cask install cloak; else brew cask install cloak; fi; else echo 'cloak is currently the newest version is available'; fi
if [[ $(brew cask info karabiner | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep karabiner) ]]; then brew cask uninstall karabiner --force && brew cask install karabiner; else brew cask install karabiner; fi; else echo 'karabiner is currently the newest version is available'; fi
if [[ $(brew cask info slate | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep slate) ]]; then brew cask uninstall slate --force && brew cask install slate; else brew cask install slate; fi; else echo 'slate is currently the newest version is available'; fi
if [[ $(brew cask info google-hangouts | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep google-hangouts) ]]; then brew cask uninstall google-hangouts --force && brew cask install google-hangouts; else brew cask install google-hangouts; fi; else echo 'google-hangouts is currently the newest version is available'; fi
if [[ $(brew cask info dash | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep dash) ]]; then brew cask uninstall dash --force && brew cask install dash; else brew cask install dash; fi; else echo 'dash is currently the newest version is available'; fi
if [[ $(brew cask info reflector | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep reflector) ]]; then brew cask uninstall reflector --force && brew cask install reflector; else brew cask install reflector; fi; else echo 'reflector is currently the newest version is available'; fi
if [[ $(brew cask info disk-inventory-x | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep disk-inventory-x) ]]; then brew cask uninstall disk-inventory-x --force && brew cask install disk-inventory-x; else brew cask install disk-inventory-x; fi; else echo 'disk-inventory-x is currently the newest version is available'; fi
if [[ $(brew cask info itrash | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep itrash) ]]; then brew cask uninstall itrash --force && brew cask install itrash; else brew cask install itrash; fi; else echo 'itrash is currently the newest version is available'; fi
if [[ $(brew cask info cyberduck | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep cyberduck) ]]; then brew cask uninstall cyberduck --force && brew cask install cyberduck; else brew cask install cyberduck; fi; else echo 'cyberduck is currently the newest version is available'; fi
if [[ $(brew cask info inssider | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep inssider) ]]; then brew cask uninstall inssider --force && brew cask install inssider; else brew cask install inssider; fi; else echo 'inssider is currently the newest version is available'; fi
if [[ $(brew cask info lastpass | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep lastpass) ]]; then brew cask uninstall lastpass --force && brew cask install lastpass; else brew cask install lastpass; fi; else echo 'lastpass is currently the newest version is available'; fi
if [[ $(brew cask info rubymine | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep rubymine) ]]; then brew cask uninstall rubymine --force && brew cask install rubymine; else brew cask install rubymine; fi; else echo 'rubymine is currently the newest version is available'; fi
if [[ $(brew cask info qlstephen | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep qlstephen) ]]; then brew cask uninstall qlstephen --force && brew cask install qlstephen; else brew cask install qlstephen; fi; else echo 'qlstephen is currently the newest version is available'; fi
if [[ $(brew cask info qlmarkdown | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep qlmarkdown) ]]; then brew cask uninstall qlmarkdown --force && brew cask install qlmarkdown; else brew cask install qlmarkdown; fi; else echo 'qlmarkdown is currently the newest version is available'; fi
if [[ $(brew cask info quicklook-json | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep quicklook-json) ]]; then brew cask uninstall quicklook-json --force && brew cask install quicklook-json; else brew cask install quicklook-json; fi; else echo 'quicklook-json is currently the newest version is available'; fi
if [[ $(brew cask info quicklook-csv | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep quicklook-csv) ]]; then brew cask uninstall quicklook-csv --force && brew cask install quicklook-csv; else brew cask install quicklook-csv; fi; else echo 'quicklook-csv is currently the newest version is available'; fi
if [[ $(brew cask info betterzipql | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep betterzipql) ]]; then brew cask uninstall betterzipql --force && brew cask install betterzipql; else brew cask install betterzipql; fi; else echo 'betterzipql is currently the newest version is available'; fi
if [[ $(brew cask info suspicious-package | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep suspicious-package) ]]; then brew cask uninstall suspicious-package --force && brew cask install suspicious-package; else brew cask install suspicious-package; fi; else echo 'suspicious-package is currently the newest version is available'; fi
if [[ $(brew cask info packages | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep packages) ]]; then brew cask uninstall packages --force && brew cask install packages; else brew cask install packages; fi; else echo 'packages is currently the newest version is available'; fi
if [[ $(brew cask info qlcolorcode | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep qlcolorcode) ]]; then brew cask uninstall qlcolorcode --force && brew cask install qlcolorcode; else brew cask install qlcolorcode; fi; else echo 'qlcolorcode is currently the newest version is available'; fi
if [[ $(brew cask info qlimagesize | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep qlimagesize) ]]; then brew cask uninstall qlimagesize --force && brew cask install qlimagesize; else brew cask install qlimagesize; fi; else echo 'qlimagesize is currently the newest version is available'; fi
if [[ $(brew cask info hetimazipql | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep hetimazipql) ]]; then brew cask uninstall hetimazipql --force && brew cask install hetimazipql; else brew cask install hetimazipql; fi; else echo 'hetimazipql is currently the newest version is available'; fi
if [[ $(brew cask info iterm2 | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep iterm2) ]]; then brew cask uninstall iterm2 --force && brew cask install iterm2; else brew cask install iterm2; fi; else echo 'iterm2 is currently the newest version is available'; fi
if [[ $(brew cask info gyazo | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep gyazo) ]]; then brew cask uninstall gyazo --force && brew cask install gyazo; else brew cask install gyazo; fi; else echo 'gyazo is currently the newest version is available'; fi
if [[ $(brew cask info 0xed | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep 0xed) ]]; then brew cask uninstall 0xed --force && brew cask install 0xed; else brew cask install 0xed; fi; else echo '0xed is currently the newest version is available'; fi
if [[ $(brew cask info alfred | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep alfred) ]]; then brew cask uninstall alfred --force && brew cask install alfred; else brew cask install alfred; fi; else echo 'alfred is currently the newest version is available'; fi
if [[ $(brew cask info docker-toolbox | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep docker-toolbox) ]]; then brew cask uninstall docker-toolbox --force && brew cask install docker-toolbox; else brew cask install docker-toolbox; fi; else echo 'docker-toolbox is currently the newest version is available'; fi
if [[ $(brew cask info githubpulse | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep githubpulse) ]]; then brew cask uninstall githubpulse --force && brew cask install githubpulse; else brew cask install githubpulse; fi; else echo 'githubpulse is currently the newest version is available'; fi
if [[ $(brew cask info github-desktop | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep github-desktop) ]]; then brew cask uninstall github-desktop --force && brew cask install github-desktop; else brew cask install github-desktop; fi; else echo 'github-desktop is currently the newest version is available'; fi
if [[ $(brew cask info paparazzi | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep paparazzi) ]]; then brew cask uninstall paparazzi --force && brew cask install paparazzi; else brew cask install paparazzi; fi; else echo 'paparazzi is currently the newest version is available'; fi
if [[ $(brew cask info box-sync | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep box-sync) ]]; then brew cask uninstall box-sync --force && brew cask install box-sync; else brew cask install box-sync; fi; else echo 'box-sync is currently the newest version is available'; fi
if [[ $(brew cask info google-chrome-canary | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep google-chrome-canary) ]]; then brew cask uninstall google-chrome-canary --force && brew cask install google-chrome-canary; else brew cask install google-chrome-canary; fi; else echo 'google-chrome-canary is currently the newest version is available'; fi
if [[ $(brew cask info soundflower | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep soundflower) ]]; then brew cask uninstall soundflower --force && brew cask install soundflower; else brew cask install soundflower; fi; else echo 'soundflower is currently the newest version is available'; fi
if [[ $(brew cask info vlc | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep vlc) ]]; then brew cask uninstall vlc --force && brew cask install vlc; else brew cask install vlc; fi; else echo 'vlc is currently the newest version is available'; fi
if [[ $(brew cask info chrome-remote-desktop-host | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep chrome-remote-desktop-host) ]]; then brew cask uninstall chrome-remote-desktop-host --force && brew cask install chrome-remote-desktop-host; else brew cask install chrome-remote-desktop-host; fi; else echo 'chrome-remote-desktop-host is currently the newest version is available'; fi
if [[ $(brew cask info near-lock | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep near-lock) ]]; then brew cask uninstall near-lock --force && brew cask install near-lock; else brew cask install near-lock; fi; else echo 'near-lock is currently the newest version is available'; fi
if [[ $(brew cask info vivaldi | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep vivaldi) ]]; then brew cask uninstall vivaldi --force && brew cask install vivaldi; else brew cask install vivaldi; fi; else echo 'vivaldi is currently the newest version is available'; fi
if [[ $(brew cask info lacona | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep lacona) ]]; then brew cask uninstall lacona --force && brew cask install lacona; else brew cask install lacona; fi; else echo 'lacona is currently the newest version is available'; fi
if [[ $(brew cask info wireshark-chmodbpf | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep wireshark-chmodbpf) ]]; then brew cask uninstall wireshark-chmodbpf --force && brew cask install wireshark-chmodbpf; else brew cask install wireshark-chmodbpf; fi; else echo 'wireshark-chmodbpf is currently the newest version is available'; fi
if [[ $(brew cask info sketch | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep sketch) ]]; then brew cask uninstall sketch --force && brew cask install sketch; else brew cask install sketch; fi; else echo 'sketch is currently the newest version is available'; fi
if [[ $(brew cask info flinto | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep flinto) ]]; then brew cask uninstall flinto --force && brew cask install flinto; else brew cask install flinto; fi; else echo 'flinto is currently the newest version is available'; fi
if [[ $(brew cask info blisk | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep blisk) ]]; then brew cask uninstall blisk --force && brew cask install blisk; else brew cask install blisk; fi; else echo 'blisk is currently the newest version is available'; fi
if [[ $(brew cask info gitter | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep gitter) ]]; then brew cask uninstall gitter --force && brew cask install gitter; else brew cask install gitter; fi; else echo 'gitter is currently the newest version is available'; fi

brew linkapps

brew cleanup
brew cask cleanup

