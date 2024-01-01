#!/bin/bash
set -eu

rtx plugins update python
rtx install python@latest
rtx upgrade python@latest
rtx use --global python@latest
rtx prune python
rtx reshim

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
