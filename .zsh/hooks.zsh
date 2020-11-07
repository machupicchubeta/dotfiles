if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which goenv > /dev/null; then eval "$(goenv init -)"; fi
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

eval "$(direnv hook zsh)"
eval $(gdircolors ~/Repositories/github.com/seebi/dircolors-solarized)
eval "$(hub alias -s)"

test -e '/usr/local/opt/zsh-navigation-tools/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh' && source '/usr/local/opt/zsh-navigation-tools/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh'
test -e '/usr/local/opt/fzf/shell/completion.zsh' && source '/usr/local/opt/fzf/shell/completion.zsh'
test -e '/usr/local/opt/fzf/shell/key-bindings.zsh' && source '/usr/local/opt/fzf/shell/key-bindings.zsh'
test -e '/usr/local/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh' && source '/usr/local/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh'
test -e '/usr/local/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' && source '/usr/local/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
test -e '/usr/local/share/zsh/site-functions/_aws' && source '/usr/local/share/zsh/site-functions/_aws'
