#!/bin/bash
set -u

ITERM2_ROOT="/Applications/iTerm.app"
ITERM2_ROSETTA2_ROOT="/Applications/iTermRosetta.app"

if [ ! -d "$ITERM2_ROOT" ]; then
  echo "Install iTerm.app first."
  exit 1
fi

if [ -d "$ITERM2_ROSETTA2_ROOT" ]; then
  rm --recursive "$ITERM2_ROSETTA2_ROOT"
fi

cp --recursive "$ITERM2_ROOT" "$ITERM2_ROSETTA2_ROOT"
echo -e "Completed duplicating iTermRosetta.app based on iTerm.app.\nNext, enable the \"Open using Rosetta\" option for iTermRosetta.app manually.\nYou can use \"Command-I\" key to open the app's information window to set the options."
