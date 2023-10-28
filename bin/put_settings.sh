#!/bin/bash
set -eu

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH:=$REPOSITORIES_PATH/github.com}"
: "${SETTINGS_PATH:=$GITHUB_REPOSITORIES_PATH/machupicchubeta/dotfiles}"

timestamp="$(date +%Y-%m-%dT%H:%M:%S%z)"

find "$SETTINGS_PATH"/.* -maxdepth 0 -type d ! -path "$SETTINGS_PATH/." ! -path "$SETTINGS_PATH/.." ! -path "$SETTINGS_PATH/.git" -exec sh -c '
    dot_directory=$1
    dot_directory_name=$(basename "$dot_directory")
    if [ -L "$HOME/$dot_directory_name" ]; then
      unlink "$HOME/$dot_directory_name"
    fi
    if [ -e "$HOME/$dot_directory_name" ]; then
      mv "$HOME/$dot_directory_name" "$HOME"/"$dot_directory_name"_"$timestamp"
    fi
    ln -s "$dot_directory" "$HOME/$dot_directory_name"
  ' sh {} \;

: "${XDG_CONFIG_HOME:=$HOME/.config}"
: "${XDG_DATA_HOME:=$HOME/.local/share}"
: "${XDG_CACHE_HOME:=$HOME/.cache}"

if [ ! -d "$XDG_CONFIG_HOME" ]; then
  mkdir "$XDG_CONFIG_HOME"
fi
if [ ! -d "$XDG_DATA_HOME" ]; then
  mkdir --parents "$XDG_DATA_HOME"
fi
if [ -L "$XDG_CONFIG_HOME/nvim" ]; then
  unlink "$XDG_CONFIG_HOME/nvim"
fi
if [ -d "$SETTINGS_PATH/.vim" ]; then
  ln -s "$SETTINGS_PATH/.vim" "$XDG_CONFIG_HOME/nvim"
fi

for app in "git" "starship" "lsd" "sheldon" "bundle" "readline" "gem" "rspec" "tmux"; do
  if [ -L "$XDG_CONFIG_HOME/$app" ]; then
    unlink "$XDG_CONFIG_HOME/$app"
  fi
  if [ -d "$XDG_CONFIG_HOME/$app" ]; then
    mv "$XDG_CONFIG_HOME/$app" "$XDG_CONFIG_HOME/$app"_"$timestamp"
  fi
  if [ -d "$SETTINGS_PATH/config/$app" ]; then
    ln -s "$SETTINGS_PATH/config/$app" "$XDG_CONFIG_HOME/$app"
  fi

  if [ "$app" = "sheldon" ]; then
    for shell in "bash" "zsh"; do
      if [ ! -d "$XDG_DATA_HOME/$app/$shell" ]; then
        mkdir --parents "$XDG_DATA_HOME/$app/$shell"
      fi
    done
  fi

  if [ "$app" = "bundle" ]; then
    for arch in "x86_64" "arm64"; do
      if [ ! -d "$XDG_DATA_HOME/$app/$arch" ]; then
        mkdir --parents "$XDG_DATA_HOME/$app/$arch"
      fi
      if [ ! -d "$XDG_DATA_HOME/$app/$arch/plugin" ]; then
        mkdir --parents "$XDG_DATA_HOME/$app/$arch/plugin"
      fi
      if [ ! -d "$XDG_CACHE_HOME/$app/$arch" ]; then
        mkdir --parents "$XDG_CACHE_HOME/$app/$arch"
      fi
    done
  fi
done
unset -v app
unset -v shell
unset -v arch

find "$SETTINGS_PATH"/.* -maxdepth 0 -type f -exec sh -c '
    dot_file=$1
    dot_filename=$(basename "$dot_file")
    if [ -L "$HOME/$dot_filename" ]; then
      unlink "$HOME/$dot_filename"
    fi
    if [ -e "$HOME/$dot_filename" ]; then
      mv "$HOME/$dot_filename" "$HOME"/"$dot_filename"_"$timestamp"
    fi
    ln -s "$dot_file" "$HOME/$dot_filename"
  ' sh {} \;

if [ -L "$HOME/.irbrc" ]; then
  unlink "$HOME/.irbrc"
fi
if [ -f "$GITHUB_REPOSITORIES_PATH/k0kubun/dotfiles/config/.irbrc" ]; then
  ln -s "$GITHUB_REPOSITORIES_PATH/k0kubun/dotfiles/config/.irbrc" "$HOME/.irbrc"
fi

if [ -L /etc/my.cnf ]; then
  sudo unlink /etc/my.cnf
fi
if [ -e /etc/my.cnf ]; then
  sudo mv /etc/my.cnf /etc/my.cnf_"$timestamp"
fi
if [ -f "$SETTINGS_PATH/mysql/my-utf8mb4.cnf" ]; then
  sudo ln -s "$SETTINGS_PATH/mysql/my-utf8mb4.cnf" /etc/my.cnf
fi

: "${RBENV_ROOT:=$HOME/.rbenv}"

if [ ! -d "$RBENV_ROOT" ]; then
  mkdir "$RBENV_ROOT"
fi

if [ -L "$RBENV_ROOT/default-gems" ]; then
  unlink "$RBENV_ROOT/default-gems"
fi
if [ -f "$SETTINGS_PATH/rbenv/default-gems" ]; then
  ln -s "$SETTINGS_PATH/rbenv/default-gems" "$RBENV_ROOT/default-gems"
fi

unset SETTINGS_PATH
unset GITHUB_REPOSITORIES_PATH
unset REPOSITORIES_PATH

unset timestamp
