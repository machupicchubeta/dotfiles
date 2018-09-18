#!/bin/bash

# pip
pip install --upgrade pip

# pip2
pip2 install neovim

# pip3
pip3 install --upgrade pip setuptools wheel
pip3 list --outdated | awk '{print $1}' | xargs pip3 install -U
pip3 install neovim
/usr/local/bin/pip3 install neovim
