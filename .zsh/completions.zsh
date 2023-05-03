if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi

fpath=($HOME/.zfunc $HOMEBREW_PREFIX/opt/zsh-completions/share/zsh-completions $fpath)
_cache_hosts=(`ruby -ne 'if /^Host\s+(.+)$/; print $1.strip, "\n"; end' $HOME/.ssh/config`)

autoload -Uz colors
colors

autoload -Uz select-word-style
select-word-style default

zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

autoload predict-on
zle -N predict-on
zle -N predict-off
zstyle ':predict' verbose true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'
zstyle ':completion:*' completer _complete _ignored _cmdstring _canonical_paths _expand _extensions _external_pwds _expand_alias _files _multi_parts
if [ -n "$LS_COLORS" ]; then
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
else
  zstyle ':completion:*' list-colors ''
fi
zstyle ':completion:*:cd:*' tag-order local-directories path-directories
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:sudo:*' command-path $HOMEBREW_PREFIX/sbin $HOMEBREW_PREFIX/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
