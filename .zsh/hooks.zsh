if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init --path)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which goenv > /dev/null; then eval "$(goenv init -)"; fi
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi
if which starship > /dev/null; then eval "$(starship init zsh)"; fi

if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH=$REPOSITORIES_PATH/github.com}"

if [ -r "$HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh" ]; then source "$HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh" ]; then source "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then source "$HOMEBREW_PREFIX/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then source "$HOMEBREW_PREFIX/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/share/zsh/site-functions/_aws" ]; then source "$HOMEBREW_PREFIX/share/zsh/site-functions/_aws"; fi

if [ -r "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized" ]; then eval $(gdircolors "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized"); fi

complete -o nospace -C $HOMEBREW_PREFIX/bin/terraform terraform

preexec() { print '' }
