if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi

if command -v direnv > /dev/null; then eval "$(direnv hook bash)"; fi
if command -v starship > /dev/null; then eval "$(starship init bash)"; fi
if command -v rtx > /dev/null; then eval "$(rtx activate bash)"; fi
if command -v asdf > /dev/null; then . "$HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh"; fi

if [ -r "$HOMEBREW_PREFIX/etc/bash_completion" ]; then source "$HOMEBREW_PREFIX/etc/bash_completion"; fi
if [ -r "$HOMEBREW_PREFIX/opt/fzf/shell/completion.bash" ]; then source "$HOMEBREW_PREFIX/opt/fzf/shell/completion.bash"; fi
if [ -r "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.bash" ]; then source "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.bash"; fi

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH=$REPOSITORIES_PATH/github.com}"

if [ -r "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized/dircolors.ansi-universal" ]; then eval $(gdircolors "$GITHUB_REPOSITORIES_PATH/seebi/dircolors-solarized/dircolors.ansi-universal"); fi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

complete -C aws_completer aws

complete -C $HOMEBREW_PREFIX/bin/terraform terraform

ssh-add --apple-load-keychain &> /dev/null
