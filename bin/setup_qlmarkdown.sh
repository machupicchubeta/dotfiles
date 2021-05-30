#!/bin/bash
set -eu

defaults write com.apple.finder QLEnableTextSelection -bool TRUE
killall Finder
