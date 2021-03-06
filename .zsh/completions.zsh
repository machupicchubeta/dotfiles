fpath=($HOME/.zfunc /usr/local/opt/zsh-completions/share/zsh-completions $fpath)

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
zstyle ':completion:*:cd:*' tag-order local-directories path-directories
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
