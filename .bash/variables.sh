if [ "$(uname -m)" = "x86_64" ]; then
  export ARCHFLAGS="-arch x86_64"
  export HOMEBREW_PREFIX="/usr/local"
  export HOMEBREW_REPOSITORY="/usr/local/Homebrew"
  export BUNDLE_USER_HOME="$HOME/.bundle_x86_64"
elif [ "$(uname -m)" = "arm64" ]; then
  export ARCHFLAGS="-arch arm64"
  export HOMEBREW_PREFIX="/opt/homebrew"
  export HOMEBREW_REPOSITORY="/opt/homebrew"
  export BUNDLE_USER_HOME="$HOME/.bundle_arm64"
fi

# Make vim the default editor
export EDITOR="vim"
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

export LESS='-R'
export LESSOPEN="| $HOMEBREW_PREFIX/bin/src-hilite-lesspipe.sh %s"

# Prefer US English and use UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOMEBREW_PREFIX/opt/libxml2/bin:$HOMEBREW_PREFIX/opt/libxslt/bin:$HOMEBREW_PREFIX/opt/libiconv/bin:$HOMEBREW_PREFIX/opt/openssl/bin:$HOMEBREW_PREFIX/opt/libressl/bin:$HOMEBREW_PREFIX/opt/curl/bin:$HOMEBREW_PREFIX/opt/sqlite/bin:$HOMEBREW_PREFIX/opt/nss/bin:$HOMEBREW_PREFIX/opt/ruby/bin:$HOMEBREW_PREFIX/opt/go/bin:$HOMEBREW_PREFIX/opt/python/bin:$HOMEBREW_PREFIX/opt/python/libexec/bin:$HOMEBREW_PREFIX/opt/openjdk/bin:$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$HOMEBREW_PREFIX/opt/ed/libexec/gnubin:$HOMEBREW_PREFIX/opt/ed/bin:$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-indent/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-which/libexec/gnubin:$HOMEBREW_PREFIX/opt/gnu-getopt/bin:$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$HOMEBREW_PREFIX/opt/m4/bin:$HOMEBREW_PREFIX/opt/make/libexec/gnubin:$HOMEBREW_PREFIX/opt/file-formula/bin:$HOMEBREW_PREFIX/opt/apr/bin:$HOMEBREW_PREFIX/opt/unzip/bin:$HOMEBREW_PREFIX/opt/ssh-copy-id/bin:$HOMEBREW_PREFIX/opt/util-linux/bin:$HOMEBREW_PREFIX/opt/util-linux/sbin:$HOME/bin:$HOME/.cargo/bin:$PYENV_ROOT/bin:$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
if [ -n "$(echo $CPU_BRAND | grep -o 'Apple')" -a "$(uname -m)" = "arm64" ]; then
  export PATH="$PATH:/usr/local/bin"
fi
: "${MANPATH:=}"
export MANPATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman:$HOMEBREW_PREFIX/opt/erlang/lib/erlang/man:$HOMEBREW_PREFIX/man:$MANPATH"

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

export XDG_CONFIG_HOME=~/.config

export PYTHONPATH=$(if [ -d "$PYENV_ROOT/shims" ]; then echo "$PYENV_ROOT/shims"; elif [ -d "$HOMEBREW_PREFIX/opt/python/libexec/bin" ]; then echo "$HOMEBREW_PREFIX/opt/python/libexec/bin"; else echo '/usr/bin/python'; fi)

export ENHANCD_FILTER=fzf
export ENHANCD_DOT_ARG='~~'

export GREP_OPTIONS='--color=auto'

export GUILE_TLS_CERTIFICATE_DIRECTORY="$HOMEBREW_PREFIX/etc/gnutls/"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$HOMEBREW_PREFIX/opt/openssl@1.1"
