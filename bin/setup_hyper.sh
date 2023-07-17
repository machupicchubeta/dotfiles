#!/bin/bash
set -eu

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH:=$REPOSITORIES_PATH/github.com}"
: "${SETTINGS_PATH:=$GITHUB_REPOSITORIES_PATH/machupicchubeta/dotfiles}"
: "${XDG_CONFIG_HOME:=$HOME/.config}"

CONFIG_DIRECTORIES=("$HOME" "$XDG_CONFIG_HOME/Hyper" "$HOME/Library/Application Support/Hyper")

for config_directory in "${CONFIG_DIRECTORIES[@]}"; do
  if [ ! -d "$config_directory/.hyper_plugins" ]; then
    mkdir -p "$config_directory/.hyper_plugins"
  fi
  if [ -L "$config_directory/.hyper.js" ]; then
    unlink "$config_directory/.hyper.js"
  fi
  if [ -f "$config_directory/.hyper.js" ]; then
    mv "$config_directory/.hyper.js" "$config_directory"/.hyper.js_"$(date +%Y-%m-%dT%H:%M:%S%z)"
  fi
  if [ -f "$SETTINGS_PATH/hyper/.hyper.js" ]; then
    ln -s "$SETTINGS_PATH/hyper/.hyper.js" "$config_directory/.hyper.js"
  fi
done

unset SETTINGS_PATH
unset GITHUB_REPOSITORIES_PATH
unset REPOSITORIES_PATH
