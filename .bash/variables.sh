export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

if [ "$(uname -m)" = "x86_64" ]; then
  export ARCHFLAGS="-arch x86_64"
  export HOMEBREW_PREFIX="/usr/local"
  export HOMEBREW_CELLAR="/usr/local/Cellar"
  export HOMEBREW_REPOSITORY="/usr/local/Homebrew"

  export BUNDLE_USER_HOME="$XDG_DATA_HOME/bundle/x86_64"
  export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle/x86_64/config"
  export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle/x86_64"
  export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle/x86_64/plugin"
elif [ "$(uname -m)" = "arm64" ]; then
  export ARCHFLAGS="-arch arm64"
  export HOMEBREW_PREFIX="/opt/homebrew"
  export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
  export HOMEBREW_REPOSITORY="/opt/homebrew"

  export BUNDLE_USER_HOME="$XDG_DATA_HOME/bundle/arm64"
  export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle/arm64/config"
  export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle/arm64"
  export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle/arm64/plugin"
fi

# Make vim the default editor
export EDITOR="nvim"
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

export LESS='-R'
export LESSOPEN="| $HOMEBREW_PREFIX/bin/src-hilite-lesspipe.sh %s"

# Prefer US English and use UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export RBENV_ROOT="$XDG_DATA_HOME/rbenv"
export IRBRC="$XDG_CONFIG_HOME/irb/irbrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export _Z_DATA="$XDG_DATA_HOME/z/data"
export NODENV_ROOT="$XDG_DATA_HOME/nodenv"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export GOENV_ROOT="$XDG_DATA_HOME/goenv"
export GOENV_GOPATH_PREFIX="$XDG_DATA_HOME/goenv/modules"
export ENHANCD_DIR="$XDG_DATA_HOME/enhancd"

export PATH="$GOENV_ROOT/shims:$HOMEBREW_PREFIX/opt/libxml2/bin:$HOMEBREW_PREFIX/opt/libxslt/bin:$HOMEBREW_PREFIX/opt/libiconv/bin:$HOMEBREW_PREFIX/opt/openssl/bin:$HOMEBREW_PREFIX/opt/libressl/bin:$HOMEBREW_PREFIX/opt/curl/bin:$HOMEBREW_PREFIX/opt/sqlite/bin:$HOMEBREW_PREFIX/opt/nss/bin:$HOMEBREW_PREFIX/opt/ruby/bin:$HOMEBREW_PREFIX/opt/go/bin:$HOMEBREW_PREFIX/opt/python/bin:$HOMEBREW_PREFIX/opt/python/libexec/bin:$HOMEBREW_PREFIX/opt/openjdk/bin:$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$HOMEBREW_PREFIX/opt/ed/libexec/gnubin:$HOMEBREW_PREFIX/opt/ed/bin:$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-indent/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-which/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-getopt/bin:$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$HOMEBREW_PREFIX/opt/m4/bin:$HOMEBREW_PREFIX/opt/make/libexec/gnubin:$HOMEBREW_PREFIX/opt/file-formula/bin:$HOMEBREW_PREFIX/opt/apr/bin:$HOMEBREW_PREFIX/opt/unzip/bin:$HOMEBREW_PREFIX/opt/ssh-copy-id/bin:$HOMEBREW_PREFIX/opt/util-linux/bin:$HOMEBREW_PREFIX/opt/util-linux/sbin:$HOMEBREW_PREFIX/opt/postgresql@16/bin:$HOME/bin:$CARGO_HOME/bin:$PYENV_ROOT/bin:$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
if [ -n "$(echo $CPU_BRAND | grep -o 'Apple')" -a "$(uname -m)" = "arm64" ]; then
  export PATH="$PATH:/usr/local/bin"
fi
export MANPATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman:$HOMEBREW_PREFIX/opt/erlang/lib/erlang/man:$HOMEBREW_PREFIX/share/man${MANPATH+:$MANPATH}"
export INFOPATH="$HOMEBREW_PREFIX/share/info:${INFOPATH:-}"

# Larger bash history (allow 2^10^2 entries; default is 500)
export HISTSIZE=1048576
export SAVEHIST=1048576
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
#export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"
export HISTIGNORE="history:cd:pwd:exit:date:* --help"

export TERM=xterm-256color

export HOMEBREW_GITHUB_API_TOKEN=

export AWS_PROFILE=default

export DISABLE_SPRING=1

export PYTHONPATH=$(if [ -d "$PYENV_ROOT/shims" ]; then echo "$PYENV_ROOT/shims"; elif [ -d "$HOMEBREW_PREFIX/opt/python/libexec/bin" ]; then echo "$HOMEBREW_PREFIX/opt/python/libexec/bin"; else echo '/usr/bin/python'; fi)

export ENHANCD_FILTER=fzf
export ENHANCD_DOT_ARG='~~'

export GREP_OPTIONS='--color=auto'

export GUILE_TLS_CERTIFICATE_DIRECTORY="$HOMEBREW_PREFIX/etc/gnutls/"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$HOMEBREW_PREFIX/opt/openssl@1.1"

export GPG_TTY=$(tty)
