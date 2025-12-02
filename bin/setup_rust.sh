#!/bin/bash
set -eu

: "${XDG_DATA_HOME:=$HOME/.local/share}"
: "${RUSTUP_HOME:=$XDG_DATA_HOME/rustup}"
: "${CARGO_HOME:=$XDG_DATA_HOME/cargo}"

if [[ ! -d "$CARGO_HOME/bin" ]]; then RUSTUP_INIT_SKIP_PATH_CHECK=yes rustup-init -y --no-update-default-toolchain --no-modify-path; fi
rustup default stable
rustup update

: "${HOMEBREW_PREFIX:=/opt/homebrew}"
if [[ ! -f "$HOMEBREW_PREFIX/etc/bash_completion.d/rustup.bash-completion" ]]; then rustup completions bash > "$HOMEBREW_PREFIX/etc/bash_completion.d/rustup.bash-completion"; fi
if [[ ! -d "$RUSTUP_HOME" ]]; then mkdir -p "$RUSTUP_HOME"; fi
if [[ ! -f "$RUSTUP_HOME/completions" ]]; then rustup completions zsh > "$RUSTUP_HOME/completions"; fi
