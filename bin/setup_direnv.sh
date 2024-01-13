#!/bin/bash
set -eu

: "${XDG_CONFIG_HOME:=$HOME/.config}"

mise direnv activate > "$XDG_CONFIG_HOME/direnv/lib/use_mise.sh"
