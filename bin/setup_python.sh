#!/bin/bash
set -eu

latest_python3_version=$(pyenv install -l | grep --perl-regexp '^\s+3\.\d+\.\d+$' | tail -n 1 | sed -e 's/^[ ]*//g')
pyenv install --skip-existing $latest_python3_version
pyenv global $latest_python3_version
pyenv rehash

eval "$(pyenv init --path)"

python3 -m pip install --upgrade pip
pip3 install --upgrade setuptools wheel
pip3 list --outdated | awk 'NR>2{print $1}' | xargs --no-run-if-empty pip3 install --upgrade
pip3 install pynvim

if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi

if [ -x "$HOMEBREW_PREFIX/bin/pip3" ]; then
  $HOMEBREW_PREFIX/bin/pip3 install pynvim
fi
