#!/bin/bash
set -eu

: "${XDG_DATA_HOME:=$HOME/.local/share}"
: "${RUSTUP_HOME:=$XDG_DATA_HOME/rustup}"
: "${CARGO_HOME:=$XDG_DATA_HOME/cargo}"

# if [[ ! -d "$HOME/.cargo/bin" ]]; then RUSTUP_INIT_SKIP_PATH_CHECK=yes rustup-init -y --no-modify-path --default-host x86_64-apple-darwin --default-toolchain stable --profile default; fi
if [[ ! -d "$CARGO_HOME/bin" ]]; then RUSTUP_INIT_SKIP_PATH_CHECK=yes rustup-init -y --no-update-default-toolchain --no-modify-path; fi
rustup update

if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi
if [[ ! -f "$HOMEBREW_PREFIX/etc/bash_completion.d/rustup.bash-completion" ]]; then rustup completions bash > "$HOMEBREW_PREFIX/etc/bash_completion.d/rustup.bash-completion"; fi
if [[ ! -d "$RUSTUP_HOME" ]]; then mkdir -p "$RUSTUP_HOME"; fi
if [[ ! -f "$RUSTUP_HOME/completions" ]]; then rustup completions zsh > "$RUSTUP_HOME/completions"; fi
