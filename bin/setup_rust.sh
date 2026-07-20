#!/bin/bash
set -eu

mise install rust@latest
mise upgrade rust@latest
mise use --global rust@latest
mise prune --yes rust
mise reshim

: "${HOMEBREW_PREFIX:=/opt/homebrew}"
if [[ -d "$HOMEBREW_PREFIX/opt/zsh-completions/share/zsh-completions" ]]; then rustup completions zsh > "$HOMEBREW_PREFIX/opt/zsh-completions/share/zsh-completions/_rust"; fi
