#!/bin/bash
set -eu

mise install node@lts
mise upgrade node@lts
mise install node@latest
mise upgrade node@latest
mise use --global node@latest node@lts
mise prune --yes node
mise reshim

mise exec -- npm update -g
