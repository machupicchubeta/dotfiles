#!/bin/bash
set -eu

if [ ! -e "$HOME/.ssh/id_rsa" ]; then
  echo 'Enter email:'
  read -r email
  ssh-keygen -t rsa -b 4096 -C "$email"
  eval "$(ssh-agent -s)"
  ssh-add -K "$HOME/.ssh/id_rsa"
fi
