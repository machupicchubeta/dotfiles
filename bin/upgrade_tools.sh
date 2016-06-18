#!/bin/bash

# pip
pip install --upgrade pip setuptools
pip install --upgrade
pip install aws-shell
pip install neovim

# gem
gem update --system
gem update
gem cleanup

rbenv rehash
