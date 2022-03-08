#!/bin/bash
set -eu

echo -e "\nCreate tmp directory"
if [ ! -d "$HOME/tmp" ]; then
  mkdir "$HOME/tmp"
fi

echo -e "\nCreate own Applications directory"
if [ ! -d "$HOME/Applications" ]; then
  mkdir "$HOME/Applications"
fi

echo -e "\nChange screencapture store directory"
SCREENSHOTS_PATH="$HOME/Screenshots"
if [ ! -d "$SCREENSHOTS_PATH" ]; then
  mkdir "$SCREENSHOTS_PATH"
fi
defaults write com.apple.screencapture location "$SCREENSHOTS_PATH"
killall SystemUIServer
