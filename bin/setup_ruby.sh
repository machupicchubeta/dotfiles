#!/bin/bash
set -eu

sudo xcode-select -s /Library/Developer/CommandLineTools

latest_ruby_version=$(rbenv install -l | grep --perl-regexp '^(\d+\.\d+)\.\d+$' | tail -n 1)
rbenv install --skip-existing $latest_ruby_version
rbenv global $latest_ruby_version
rbenv rehash

eval "$(rbenv init -)"

# gem
gem update --system
gem update
gem cleanup

latest_solargraph_core_version=$(solargraph available-cores | grep --perl-regexp '^(\d+\.\d+)\.\d+$' | head -n 1)
solargraph download-core $latest_solargraph_core_version
