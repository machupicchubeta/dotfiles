#!/bin/bash
set -eu

rtx plugins update ruby
rtx install ruby@latest
rtx upgrade ruby@latest
rtx use --global ruby@latest
rtx prune ruby
rtx reshim

gem update --system
gem update
gem cleanup
