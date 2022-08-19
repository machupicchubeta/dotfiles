#!/bin/bash
set -eu

latest_go_version=$(goenv install -l | grep --perl-regexp '^\s+(\d+\.\d+)\.\d+$' | tail -n 1 | sed -e 's/^[ ]*//g')
goenv install --skip-existing $latest_go_version
goenv global $latest_go_version
goenv rehash

eval "$(goenv init -)"

go install github.com/fujimura/git-gsub@latest
go install golang.org/x/tools/gopls@latest
