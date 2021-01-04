_PID=$$; _PPID=$(ps -o ppid -p $_PID | tail -n 1)
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

export ARCHFLAGS="-arch x86_64"
# Make vim the default editor
export EDITOR="vim"
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'

# Prefer US English and use UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="/usr/local/opt/openssl/lib:/usr/local/opt/openssl/include:/usr/local/opt/openssl/bin:/usr/local/opt/libressl/bin:/usr/local/opt/curl/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/nss/bin:$PYTHOPATH:$HOME/bin:$HOME/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/opt/go/libexec/bin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/man:$MANPATH"

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

export HOMEBREW_GITHUB_API_TOKEN=

export AWS_PROFILE=default

export DISABLE_SPRING=1

export XDG_CONFIG_HOME=~/.config

export ANDROID_SDK_ROOT='/usr/local/share/android-sdk'

export PYTHONPATH=$(if which pyenv > /dev/null; then echo -n "$(pyenv root)/shims"; else '/usr/local/bin'; fi)

export ENHANCD_FILTER=fzf
export ENHANCD_DOT_ARG='~~'

export GREP_OPTIONS='--color=auto'

# spaceship-prompt
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_TIME_FORMAT="%D{%Y-%m-%d %H:%M:%S.%. %z}"
export SPACESHIP_TIME_COLOR=black
export SPACESHIP_USER_SHOW=always
export SPACESHIP_USER_COLOR=black
export SPACESHIP_HOST_SHOW=always
export HOST=$(box_name)
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  time          # Time stamps section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
