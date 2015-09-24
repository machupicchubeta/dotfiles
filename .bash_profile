for file in ~/.dotfiles/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# init z   https://github.com/rupa/z
#. ~/.dotfiles/libs/z/z.sh

# include proxy.sh
#. libs/proxy.sh

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# {{{
# Node Completion - Auto-generated, do not touch.
#shopt -s progcomp
#for f in $(command ls ~/.node-completion); do
#  f="$HOME/.node-completion/$f"
#  test -f "$f" && . "$f"
#done
# }}}

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
# export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
# test -f ~/.bashrc && source ~/.bashrc

source ~/.git-completion.bash

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/perl5/perlbrew/etc/bashrc

export export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'

complete -C aws_completer aws

eval "$(direnv hook $0)"

