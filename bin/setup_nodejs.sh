#!/bin/bash
set -eu

latest_nodejs_version=$(nodenv install -l | grep -E '^\s+(\d+\.\d+)\.\d+$' | tail -n 1)
nodenv install --skip-existing $latest_nodejs_version
nodenv global $latest_nodejs_version
nodenv rehash

npm install -g npm
npm install -g neovim
npm update -g
