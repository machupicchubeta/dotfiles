#!/bin/bash
set -eu

if [ ! -x "$(command -v ghq)" ]; then
  echo "Install ghq command first."
  exit 1
fi

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
if [ ! -d "$REPOSITORIES_PATH" ]; then
  mkdir "$REPOSITORIES_PATH"
fi

export GHQ_ROOT="${GHQ_ROOT:=$REPOSITORIES_PATH}"
ghq get --update https://github.com/flutter/flutter

export FLUTTER_ROOT="${FLUTTER_ROOT:=$REPOSITORIES_PATH/github.com/flutter/flutter}"
git -C $FLUTTER_ROOT switch stable
$FLUTTER_ROOT/bin/flutter channel stable

unset REPOSITORIES_PATH
