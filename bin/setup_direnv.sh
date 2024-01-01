#!/bin/bash
set -eu

: "${XDG_CONFIG_HOME:=$HOME/.config}"

rtx direnv activate > "$XDG_CONFIG_HOME/direnv/lib/use_rtx.sh"
