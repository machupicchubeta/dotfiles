#!/bin/bash
set -eu

if [ "$SHELL" != "$(which zsh)" ]; then
  command -v zsh | sudo tee -a /etc/shells
  chsh -s "$(which zsh)"
fi
