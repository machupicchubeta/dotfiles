#!/bin/bash
set -eu

# if [[ ! -d "$HOME/.cargo/bin" ]]; then RUSTUP_INIT_SKIP_PATH_CHECK=yes rustup-init -y --no-modify-path --default-host x86_64-apple-darwin --default-toolchain stable --profile default; fi
if [[ ! -d "$HOME/.cargo/bin" ]]; then RUSTUP_INIT_SKIP_PATH_CHECK=yes rustup-init -y --no-update-default-toolchain --no-modify-path; fi
rustup update

if [[ ! -f /usr/local/etc/bash_completion.d/rustup.bash-completion ]]; then rustup completions bash > /usr/local/etc/bash_completion.d/rustup.bash-completion; fi
if [[ ! -d "$HOME/.zfunc" ]]; then mkdir -p "$HOME/.zfunc"; fi
if [[ ! -f $HOME/.zfunc/_rustup ]]; then rustup completions zsh > $HOME/.zfunc/_rustup; fi
