#!/bin/bash

# pip
pip install --upgrade pip setuptools
pip list --outdated | awk '{print $1}' | xargs pip install -U
pip install aws-shell
pip install neovim

# gem
gem update --system
gem update
gem cleanup

rbenv rehash
