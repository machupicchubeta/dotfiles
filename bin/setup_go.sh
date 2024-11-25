#!/bin/bash
set -eu

mise install go@latest
mise upgrade go@latest
mise use --global go@latest
mise prune --yes go
mise reshim
