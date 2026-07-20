#!/bin/bash
set -eu

mise install rust@latest
mise upgrade rust@latest
mise use --global rust@latest
mise prune --yes rust
mise reshim
