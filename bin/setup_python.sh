#!/bin/bash
set -eu

latest_python3_version=$(pyenv install -l | grep -E '^\s+3\.\d+\.\d+$' | tail -n 1 | sed -e 's/^[ ]*//g')
pyenv install --skip-existing $latest_python3_version
pyenv global $latest_python3_version
pyenv rehash

eval "$(pyenv init -)"

# pip
pip install --upgrade pip

# pip3
pip3 install --upgrade pip setuptools wheel
pip3 list --outdated | awk 'NR>2{print $1}' | xargs pip3 install -U
pip3 install awscli
pip3 install aws-shell
pip3 install cfn-lint
pip3 install pynvim
/usr/local/bin/pip3 install pynvim