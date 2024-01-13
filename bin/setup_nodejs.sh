#!/bin/bash
set -eu

mise plugins update node
mise install node@lts
mise upgrade node@lts
mise install node@latest
mise upgrade node@latest
mise use --global node@latest
mise prune node
mise reshim

npm update -g
