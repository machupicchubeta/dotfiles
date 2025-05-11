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

export CPU_BRAND="$(/usr/sbin/sysctl -n machdep.cpu.brand_string)"
export X86_64_HOMEBREW_PATH="/usr/local/bin/brew"

# Make vim the default editor
export EDITOR="nvim"
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

export LESS='-R'
export LESSOPEN="| $HOMEBREW_PREFIX/bin/src-hilite-lesspipe.sh %s"
export LESSHISTFILE="$XDG_DATA_HOME/less/history"

# Prefer US English and use UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export IRBRC="$XDG_CONFIG_HOME/irb/irbrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export _Z_DATA="$XDG_DATA_HOME/z/data"
export MISE_CONFIG_DIR="$XDG_CONFIG_HOME/mise"
export MISE_DATA_DIR="$XDG_DATA_HOME/mise"
export MISE_CACHE_DIR="$XDG_CACHE_HOME/mise"
export MISE_RUBY_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/mise/ruby/default-gems"
export MISE_GO_SET_GOROOT=1
export MISE_GO_SET_GOPATH=1
export MISE_GO_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/mise/go/default-go-packages"
export MISE_NODE_COREPACK=1
export MISE_NODE_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/mise/node/default-npm-packages"
export MISE_PYTHON_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/mise/python/default-python-packages"
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/config"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export ASDF_FORCE_PREPEND="yes"
export ASDF_PERL_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/asdf/perl/default-perl-modules"
export ASDF_HASHICORP_TERRAFORM_VERSION_FILE=".terraform-version"
export ENHANCD_DIR="$XDG_DATA_HOME/enhancd"
export BAT_CONFIG_PATH="$XDG_CONFIG_HOME/bat/config"
export FLUTTER_ROOT="$XDG_DATA_HOME/mise/installs/flutter/latest"

export PATH="$HOMEBREW_PREFIX/opt/libxml2/bin:$HOMEBREW_PREFIX/opt/libxslt/bin:$HOMEBREW_PREFIX/opt/libiconv/bin:$HOMEBREW_PREFIX/opt/openssl@3/bin:$HOMEBREW_PREFIX/opt/bison/bin:$HOMEBREW_PREFIX/opt/libressl/bin:$HOMEBREW_PREFIX/opt/curl/bin:$HOMEBREW_PREFIX/opt/sqlite/bin:$HOMEBREW_PREFIX/opt/nss/bin:$HOMEBREW_PREFIX/opt/ruby/bin:$HOMEBREW_PREFIX/opt/go/bin:$HOMEBREW_PREFIX/opt/python@3/bin:$HOMEBREW_PREFIX/opt/python@3/libexec/bin:$HOMEBREW_PREFIX/opt/openjdk/bin:$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$HOMEBREW_PREFIX/opt/ed/libexec/gnubin:$HOMEBREW_PREFIX/opt/ed/bin:$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$HOMEBREW_PREFIX/opt/gawk/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-indent/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-which/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-getopt/bin:$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$HOMEBREW_PREFIX/opt/m4/bin:$HOMEBREW_PREFIX/opt/make/libexec/gnubin:$HOMEBREW_PREFIX/opt/file-formula/bin:$HOMEBREW_PREFIX/opt/apr/bin:$HOMEBREW_PREFIX/opt/unzip/bin:$HOMEBREW_PREFIX/opt/ssh-copy-id/bin:$HOMEBREW_PREFIX/opt/util-linux/bin:$HOMEBREW_PREFIX/opt/util-linux/sbin:$HOMEBREW_PREFIX/opt/postgresql@16/bin:$ASDF_DATA_DIR/shims:$HOME/bin:$CARGO_HOME/bin:$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
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
export HISTFILE=~/.zsh_history

export TERM=xterm-256color

export AWS_PROFILE=default
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"

export DISABLE_SPRING=1

export GHQ_ROOT="$HOME/Repositories"

export PYTHONPATH=$(if [ -d "$MISE_DATA_DIR/shims" ]; then echo "$MISE_DATA_DIR/shims"; elif [ -d "$HOMEBREW_PREFIX/opt/python@3/bin" ]; then echo "$HOMEBREW_PREFIX/opt/python@3/bin"; else echo '/usr/bin'; fi)

export ENHANCD_FILTER=fzf
export ENHANCD_DOT_ARG='~~'

export GREP_OPTIONS='--color=auto'

export GUILE_TLS_CERTIFICATE_DIRECTORY="$HOMEBREW_PREFIX/etc/gnutls/"

export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/openssl@3/lib/pkgconfig"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$HOMEBREW_PREFIX/opt/openssl@3 --with-libyaml-dir=$HOMEBREW_PREFIX/opt/libyaml --with-libffi-dir=$HOMEBREW_PREFIX/opt/libffi --with-readline-dir=$HOMEBREW_PREFIX/opt/readline --with-gmp-dir=$HOMEBREW_PREFIX/opt/gmp  --enable-yjit"

export GPG_TTY=$(tty)
