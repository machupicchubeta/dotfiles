#!/bin/bash
set -eu

: "${XDG_DATA_HOME:=$HOME/.local/share}"
: "${CARGO_HOME:=$XDG_DATA_HOME/cargo}"

# if [[ ! -d "$HOME/.cargo/bin" ]]; then RUSTUP_INIT_SKIP_PATH_CHECK=yes rustup-init -y --no-modify-path --default-host x86_64-apple-darwin --default-toolchain stable --profile default; fi
if [[ ! -d "$CARGO_HOME/bin" ]]; then RUSTUP_INIT_SKIP_PATH_CHECK=yes rustup-init -y --no-update-default-toolchain --no-modify-path; fi
rustup update

if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi
if [[ ! -f $HOMEBREW_PREFIX/etc/bash_completion.d/rustup.bash-completion ]]; then rustup completions bash > $HOMEBREW_PREFIX/etc/bash_completion.d/rustup.bash-completion; fi
if [[ ! -d "$HOME/.zfunc" ]]; then mkdir -p "$HOME/.zfunc"; fi
if [[ ! -f $HOME/.zfunc/_rustup ]]; then rustup completions zsh > $HOME/.zfunc/_rustup; fi
