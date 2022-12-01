#!/bin/bash
set -eu

ALGORITHM="ed25519"

if [ ! -e "$HOME/.ssh/id_$ALGORITHM" ]; then
  echo 'Enter email:'
  read -r email
  ssh-keygen -t "$ALGORITHM" -C "$email"
  eval "$(ssh-agent -s)"
  ssh-add --apple-use-keychain "$HOME/.ssh/id_$ALGORITHM"
fi
