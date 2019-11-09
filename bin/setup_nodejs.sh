#!/bin/bash
set -eu

latest_nodejs_version=$(nodenv install -l | grep -E '^(\d+\.\d+)\.\d+$' | tail -n 1)
nodenv install --skip-existing $latest_nodejs_version
nodenv global $latest_nodejs_version
nodenv rehash

eval "$(nodenv init -)"

npm install -g npm
npm install -g neovim
npm update -g
