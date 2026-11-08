#!/bin/bash
set -eu

mise install go@latest
mise upgrade go@latest
mise use --global go@latest
mise prune --yes go
mise reshim

mise exec -- go install github.com/fujimura/git-gsub@latest
mise exec -- go install golang.org/x/tools/gopls@latest
