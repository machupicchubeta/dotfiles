#!/bin/bash
set -u

brew untap homebrew/core
brew untap homebrew/cask

brew cleanup --debug --verbose
