#!/bin/bash
set -eu

mise install ruby@latest
mise upgrade ruby@latest
mise use --global ruby@latest
mise prune --yes ruby
mise reshim

mise exec -- gem update --system
mise exec -- gem update
mise exec -- gem cleanup
