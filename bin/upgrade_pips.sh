#!/bin/bash

# pip2
pip2 install neovim

# pip
pip install --upgrade pip setuptools wheel
pip list --outdated | awk '{print $1}' | xargs pip install -U
pip install neovim
