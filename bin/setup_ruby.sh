#!/bin/bash
set -eu

mise plugins update ruby
mise install ruby@latest
mise upgrade ruby@latest
mise use --global ruby@latest
mise prune ruby
mise reshim

gem update --system
gem update
gem cleanup
