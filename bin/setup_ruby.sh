#!/bin/bash
set -eu

mise install ruby@latest
mise upgrade ruby@latest
mise use --global ruby@latest
mise prune --yes ruby
mise reshim

mise exec -- gem install fastri
mise exec -- gem install gem-browse
mise exec -- gem install gem-ctags
mise exec -- gem install git-browse-remote
mise exec -- gem install lolcat
mise exec -- gem install neovim
mise exec -- gem install parser
mise exec -- gem install powder
mise exec -- gem install reek
mise exec -- gem install refe2
mise exec -- gem install review
mise exec -- gem install rubocop
mise exec -- gem install ruby-lsp
mise exec -- gem install tmuxinator
mise exec -- gem update --system
mise exec -- gem update
mise exec -- gem cleanup
