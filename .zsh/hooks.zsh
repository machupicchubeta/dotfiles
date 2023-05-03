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

if [ -r "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized/dircolors.ansi-universal" ]; then eval $(gdircolors "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized/dircolors.ansi-universal"); fi

complete -o nospace -C $HOMEBREW_PREFIX/bin/terraform terraform

preexec() { print '' }

unset GITHUB_REPOSITORIES_PATH
unset REPOSITORIES_PATH
