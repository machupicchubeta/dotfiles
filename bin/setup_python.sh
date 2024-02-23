#!/bin/bash
set -eu

mise plugins update python
mise install python@latest
mise upgrade python@latest
mise use --global python@latest
mise prune python
mise reshim

python3 -m pip install --upgrade pip
pip3 install --upgrade setuptools wheel
pip3 list --outdated | awk 'NR>2{print $1}' | xargs --no-run-if-empty pip3 install --upgrade
pip3 install pynvim
