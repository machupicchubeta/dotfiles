#!/bin/bash
set -eu

mise plugins update python
mise install python@latest
mise upgrade python@latest
mise use --global python@latest
mise prune --yes python
mise reshim

mise exec -- python3 -m pip install --upgrade pip
mise exec -- pip3 install --upgrade setuptools wheel
mise exec -- pip3 list --outdated | awk 'NR>2{print $1}' | xargs --no-run-if-empty mise exec -- pip3 install --upgrade
mise exec -- pip3 install pynvim
