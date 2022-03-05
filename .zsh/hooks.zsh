if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init --path)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which goenv > /dev/null; then eval "$(goenv init -)"; fi
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi
if which starship > /dev/null; then eval "$(starship init zsh)"; fi

if [ -r '/usr/local/opt/fzf/shell/completion.zsh' ]; then source '/usr/local/opt/fzf/shell/completion.zsh'; fi
if [ -r '/usr/local/opt/fzf/shell/key-bindings.zsh' ]; then source '/usr/local/opt/fzf/shell/key-bindings.zsh'; fi
if [ -r '/usr/local/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh' ]; then source '/usr/local/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh'; fi
if [ -r '/usr/local/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ]; then source '/usr/local/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'; fi
if [ -r '/usr/local/share/zsh/site-functions/_aws' ]; then source '/usr/local/share/zsh/site-functions/_aws'; fi

if [ -r "$HOME/Repositories/github.com/seebi/dircolors-solarized" ]; then eval $(gdircolors "$HOME/Repositories/github.com/seebi/dircolors-solarized"); fi

complete -o nospace -C /usr/local/bin/terraform terraform

preexec() { print '' }
