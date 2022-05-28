#!/bin/bash
set -eu

latest_nodejs_version=$(nodenv install -l | grep --perl-regexp '^(\d+\.\d+)\.\d+$' | tail -n 1)
nodenv install --skip-existing $latest_nodejs_version
nodenv global $latest_nodejs_version
nodenv rehash

eval "$(nodenv init -)"

npm install --location=global npm
npm install --location=global neovim
npm update --location=global
