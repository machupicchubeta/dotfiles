#!/bin/bash
set -eu

latest_ruby_version=$(rbenv install -l | grep -E '^\s+(\d+\.\d+)\.\d+$' | tail -n 1)
rbenv install --skip-existing $latest_ruby_version
rbenv global $latest_ruby_version
rbenv rehash

# gem
gem update --system
gem update
gem cleanup
