autoload -Uz colors
colors

bindkey -e

export HISTFILE=~/.zsh_history

autoload -Uz select-word-style
select-word-style default

zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

autoload -Uz compinit
compinit

autoload predict-on
zle -N predict-on
zle -N predict-off
bindkey '' predict-on
bindkey '' predict-off
zstyle ':predict' verbose true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'
zstyle ':completion:*' completer _complete _ignored _cmdstring _canonical_paths _expand _extensions _external_pwds _expand_alias _files _multi_parts
zstyle ':completion:*:cd:*' tag-order local-directories path-directories
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

setopt print_eight_bit
setopt no_beep
setopt no_flow_control
setopt interactive_comments
setopt auto_cd
cdpath=(.)

setopt auto_menu
setopt auto_list
setopt auto_name_dirs
setopt auto_param_keys
setopt cdable_vars
setopt mark_dirs
setopt auto_param_slash
setopt list_packed
setopt numeric_glob_sort
setopt magic_equal_subst
setopt brace_ccl
setopt append_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_no_functions
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_expand
setopt function_argzero
setopt notify
setopt auto_pushd
setopt pushd_ignore_dups
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob

bindkey '^[R' history-incremental-pattern-search-backward
bindkey '^[S' history-incremental-pattern-search-forward
bindkey "^[u" undo
bindkey "^[r" redo

# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi
