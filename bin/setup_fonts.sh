#!/bin/bash
set -eu

TERMINAL_APP_PATH=""
if [ -d "/System/Applications/Utilities/Terminal.app" ]; then
  TERMINAL_APP_PATH="/System/Applications/Utilities/Terminal.app"
elif [ -d "/Applications/Utilities/Terminal.app" ]; then
  TERMINAL_APP_PATH="/Applications/Utilities/Terminal.app"
fi
if [ -n "$TERMINAL_APP_PATH" ]; then
  cp -f "$TERMINAL_APP_PATH"/Contents/Resources/Fonts/*.otf "$HOME/Library/Fonts/"
fi
