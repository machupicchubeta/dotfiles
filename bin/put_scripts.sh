#!/bin/bash
set -eu

: "${BIN_PATH:=$HOME/bin}"
: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH:=$REPOSITORIES_PATH/github.com}"
: "${SETTINGS_PATH:=$GITHUB_REPOSITORIES_PATH/$(whoami)/dotfiles}"

if [ ! -d "$BIN_PATH" ]; then
  mkdir "$BIN_PATH"
fi

for bin_file in "$SETTINGS_PATH"/bin/*; do
  bin_filename=$(basename "$bin_file")
  if [ -L "$BIN_PATH/$bin_filename" ]; then
    unlink "$BIN_PATH/$bin_filename"
  fi
  if [ -e "$BIN_PATH/$bin_filename" ]; then
    mv "$BIN_PATH/$bin_filename" "$BIN_PATH"/"$bin_filename"_"$(date +%Y-%m-%dT%H:%M:%S%z)"
  fi
  ln -s "$bin_file" "$BIN_PATH/$bin_filename"
done

if [ -L "$BIN_PATH/diceware.rb" ]; then
  unlink "$BIN_PATH/diceware.rb"
fi
if [ -f "$GITHUB_REPOSITORIES_PATH/machupicchubeta/diceware/diceware.rb" ]; then
  ln -s "$GITHUB_REPOSITORIES_PATH/machupicchubeta/diceware/diceware.rb" "$BIN_PATH/diceware.rb"
fi

if [ -L "$BIN_PATH/diceware.wordlist.asc" ]; then
  unlink "$BIN_PATH/diceware.wordlist.asc"
fi
if [ -f "$GITHUB_REPOSITORIES_PATH/machupicchubeta/diceware/diceware.wordlist.asc" ]; then
  ln -s "$GITHUB_REPOSITORIES_PATH/machupicchubeta/diceware/diceware.wordlist.asc" "$BIN_PATH/diceware.wordlist.asc"
fi

unset SETTINGS_PATH
unset GITHUB_REPOSITORIES_PATH
unset REPOSITORIES_PATH
unset BIN_PATH
