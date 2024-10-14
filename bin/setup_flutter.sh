#!/bin/bash
set -eu

# https://github.com/asdf-community/asdf-flutter/pull/52
# https://github.com/asdf-community/asdf-flutter/issues/33
# https://github.com/asdf-community/asdf-flutter/pull/36
mise plugins install flutter https://github.com/hleinone/asdf-flutter
mise plugins update flutter
mise install flutter@latest
mise upgrade flutter@latest
mise use --global flutter@latest
mise prune --yes flutter
mise reshim
