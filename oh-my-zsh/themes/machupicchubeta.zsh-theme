function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo '○'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo $SHORT_HOST || echo $HOST
}

local rbenv_ruby='‹$(rbenv version-name)›%{$reset_color%}'
local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'


PROMPT="╭─%{$FG[040]%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}${current_dir}%{$reset_color%}${git_info} %{$FG[239]%}using%{$FG[243]%} ${rbenv_ruby} %D - %*
╰─$(virtualenv_info)$(prompt_char) "

# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[blue]%}"
# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[202]%}[✘]"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FG[040]%}[✔]"
