source $HOME/.zplugrc

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

for file in $HOME/.dotfiles/.{exports,exports_zsh,exports_compiler_options,extra,aliases,aliases_zsh,functions,private}; do
  [ -r "$file" ] && source "$file"
done

function box_name {
  [ -f $HOME/.box-name ] && cat $HOME/.box-name || ([[ ! -z "$SHORT_HOST" ]] && echo $SHORT_HOST) || ([[ ! -z "$HOST" ]] && echo $HOST) || hostname -s || uname -n
}

# spaceship-prompt
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT="%D{%Y-%m-%d %H:%M:%S.%. %z}"
SPACESHIP_TIME_COLOR=black
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR=black
SPACESHIP_HOST_SHOW=always
HOST=$(box_name)
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=0
SPACESHIP_PROMPT_ORDER=(
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

autoload -U compinit && compinit

# if (which zprof > /dev/null) ;then
#   zprof | less
# fi
