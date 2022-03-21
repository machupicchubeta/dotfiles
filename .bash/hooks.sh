if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init --path)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which goenv > /dev/null; then eval "$(goenv init -)"; fi
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi

if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi

test -e "$HOMEBREW_PREFIX/etc/bash_completion" && source "$HOMEBREW_PREFIX/etc/bash_completion"
test -e "$HOMEBREW_PREFIX/opt/fzf/shell/completion.bash" && source "$HOMEBREW_PREFIX/opt/fzf/shell/completion.bash"
test -e "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.bash" && source "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.bash"

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH=$REPOSITORIES_PATH/github.com}"

eval $(gdircolors "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized")

ssh-add -A &> /dev/null
