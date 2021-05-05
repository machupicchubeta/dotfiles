if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which goenv > /dev/null; then eval "$(goenv init -)"; fi
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi

test -e '/usr/local/etc/bash_completion' && source '/usr/local/etc/bash_completion'
test -e '/usr/local/opt/fzf/shell/completion.bash' && source '/usr/local/opt/fzf/shell/completion.bash'
test -e '/usr/local/opt/fzf/shell/key-bindings.bash' && source '/usr/local/opt/fzf/shell/key-bindings.bash'

eval $(gdircolors ~/Repositories/github.com/seebi/dircolors-solarized)

ssh-add -A &> /dev/null
