: "${XDG_CONFIG_HOME:=$HOME/.config}"
: "${XDG_DATA_HOME:=$HOME/.local/share}"

: "${HOMEBREW_PREFIX:=/opt/homebrew}"
if [ -z "$(echo $PATH | grep -o $HOMEBREW_PREFIX/bin)" ]; then
  export PATH="$HOMEBREW_PREFIX/bin:$PATH"
fi

if command -v sheldon > /dev/null; then
  export SHELDON_CONFIG_DIR="$XDG_CONFIG_HOME/sheldon/bash"
  export SHELDON_DATA_DIR="$XDG_DATA_HOME/sheldon/bash"
  eval "$(sheldon source)"
fi
