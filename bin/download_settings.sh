#!/bin/bash
set -eu

: "${REPOSITORIES_PATH:=$HOME/Repositories}"

if [ ! -d "$REPOSITORIES_PATH" ]; then
  mkdir "$REPOSITORIES_PATH"
fi

export GHQ_ROOT="${GHQ_ROOT:=$REPOSITORIES_PATH}"

if [ ! -x "$(command -v ghq)" ]; then
  echo "Install ghq command first."
  exit 1
fi

ghq get --update --parallel github.com/machupicchubeta/laptop
ghq get --update --parallel github.com/machupicchubeta/dotfiles
ghq get --update --parallel github.com/machupicchubeta/diceware
ghq get --update --parallel github.com/altercation/solarized
ghq get --update --parallel github.com/JonathanSpeek/palenight-iterm2
ghq get --update --parallel github.com/mbadolato/iTerm2-Color-Schemes
ghq get --update --parallel github.com/seebi/dircolors-solarized
ghq get --update --parallel gist.github.com/4979906
ghq get --update --parallel github.com/tony/tmux-config
ghq get --update --parallel github.com/k0kubun/dotfiles

if [ ! -x "$(command -v gh)" ]; then
  echo "Install gh command first."
  exit 1
fi

gh auth login --web
