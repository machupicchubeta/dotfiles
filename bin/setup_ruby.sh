#!/bin/bash
set -eu

mise plugins update ruby
mise install ruby@latest
mise upgrade ruby@latest
mise use --global ruby@latest
mise prune ruby
mise reshim

which ruby
which mise exec -- which ruby

# gem update --system
# gem update
# gem cleanup
