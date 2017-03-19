#!/bin/bash

# pip
pip install --upgrade pip setuptools wheel
pip list --outdated | awk '{print $1}' | xargs pip install -U
pip install neovim

# pip3
pip3 install --upgrade pip setuptools wheel
pip3 list --outdated | awk '{print $1}' | xargs pip install -U
pip3 install neovim
