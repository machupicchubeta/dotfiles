: "${XDG_CONFIG_HOME:=$HOME/.config}"
: "${XDG_DATA_HOME:=$HOME/.local/share}"

if [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
  if [ -z "$(echo $PATH | grep -o $HOMEBREW_PREFIX/bin)" ]; then
    export PATH="$HOMEBREW_PREFIX/bin:$PATH"
  fi
fi

if which sheldon > /dev/null; then
  export SHELDON_CONFIG_DIR="$XDG_CONFIG_HOME/sheldon"
  export SHELDON_DATA_DIR="$XDG_DATA_HOME/sheldon"
  eval "$(sheldon source)"
fi

# if (which zprof > /dev/null) ;then
#   zprof | less
# fi
