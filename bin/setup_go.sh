#!/bin/bash
set -eu

mise plugins update go
mise install go@latest
mise upgrade go@latest
mise use --global go@latest
mise prune go
mise reshim
