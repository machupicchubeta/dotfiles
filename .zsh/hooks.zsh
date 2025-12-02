: "${HOMEBREW_PREFIX:=/opt/homebrew}"

if command -v direnv > /dev/null; then eval "$(direnv hook zsh)"; fi
if command -v starship > /dev/null; then eval "$(starship init zsh)"; fi
if command -v mise > /dev/null; then eval "$(mise activate zsh)"; fi

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH=$REPOSITORIES_PATH/github.com}"

if [ -r "$HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh" ]; then source "$HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh" ]; then source "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then source "$HOMEBREW_PREFIX/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then source "$HOMEBREW_PREFIX/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"; fi
if [ -r "$HOMEBREW_PREFIX/share/zsh/site-functions/_aws" ]; then source "$HOMEBREW_PREFIX/share/zsh/site-functions/_aws"; fi

if [ -r "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized/dircolors.ansi-universal" ]; then eval $(gdircolors "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized/dircolors.ansi-universal"); fi

if command -v mise > /dev/null && [ -f "$(mise which terraform)" ]; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C "$(mise which terraform)" terraform
fi

unset GITHUB_REPOSITORIES_PATH
unset REPOSITORIES_PATH
