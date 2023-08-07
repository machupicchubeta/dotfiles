#!/bin/bash
set -eu

latest_ruby_version=$(rbenv install -l | grep --perl-regexp '^(\d+\.\d+)\.\d+$' | tail -n 1)
# According to my tests, the build error can be avoided by keeping the PATH to a minimum when installing Ruby 2.6.x.
# PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:/usr/bin:/bin:/usr/sbin:/sbin" rbenv install --skip-existing 2.6.6
rbenv install --skip-existing $latest_ruby_version
rbenv global $latest_ruby_version
rbenv rehash

eval "$(rbenv init -)"

# gem
gem update --system
gem update
gem cleanup
