#!/bin/bash
set -eu

mise plugins install flutter
mise plugins update flutter
mise install flutter@latest
mise upgrade flutter@latest
mise use --global flutter@latest
mise prune --yes flutter
mise reshim
