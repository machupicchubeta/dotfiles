#!/bin/bash
set -eu

: "${REPOSITORIES_PATH:=$HOME/Repositories}"
: "${GITHUB_REPOSITORIES_PATH:=$REPOSITORIES_PATH/github.com}"
: "${SETTINGS_PATH:=$GITHUB_REPOSITORIES_PATH/$(whoami)/dotfiles}"

find "$SETTINGS_PATH"/.* -maxdepth 0 -type d ! -path "$SETTINGS_PATH/." ! -path "$SETTINGS_PATH/.." ! -path "$SETTINGS_PATH/.git" -exec sh -c '
    dot_directory=$1
    dot_directory_name=$(basename "$dot_directory")
    if [ -L "$HOME/$dot_directory_name" ]; then
      unlink "$HOME/$dot_directory_name"
    fi
    if [ -e "$HOME/$dot_directory_name" ]; then
      mv "$HOME/$dot_directory_name" "$HOME"/"$dot_directory_name"_"$(date +%Y-%m-%dT%H:%M:%S%z)"
    fi
    ln -s "$dot_directory" "$HOME/$dot_directory_name"
  ' sh {} \;

: "${XDG_CONFIG_HOME:=$HOME/.config}"

if [ ! -d "$XDG_CONFIG_HOME" ]; then
  mkdir "$XDG_CONFIG_HOME"
fi
if [ -L "$XDG_CONFIG_HOME/nvim" ]; then
  unlink "$XDG_CONFIG_HOME/nvim"
fi
if [ -f "$SETTINGS_PATH/.vim" ]; then
  ln -s "$SETTINGS_PATH/.vim" "$XDG_CONFIG_HOME/nvim"
fi

if [ -L "$XDG_CONFIG_HOME/starship.toml" ]; then
  unlink "$XDG_CONFIG_HOME/starship.toml"
fi
if [ -f "$SETTINGS_PATH/config/starship.toml" ]; then
  ln -s "$SETTINGS_PATH/config/starship.toml" "$XDG_CONFIG_HOME/starship.toml"
fi

if [ ! -d "$XDG_CONFIG_HOME/lsd" ]; then
  mkdir "$XDG_CONFIG_HOME/lsd"
fi
if [ -L "$XDG_CONFIG_HOME/lsd/config.yaml" ]; then
  unlink "$XDG_CONFIG_HOME/lsd/config.yaml"
fi
if [ -f "$SETTINGS_PATH/config/lsd/config.yaml" ]; then
  ln -s "$SETTINGS_PATH/config/lsd/config.yaml" "$XDG_CONFIG_HOME/lsd/config.yaml"
fi

if [ ! -d "$XDG_CONFIG_HOME/sheldon" ]; then
  mkdir "$XDG_CONFIG_HOME/sheldon"
fi
if [ -L "$XDG_CONFIG_HOME/sheldon/plugins.toml" ]; then
  unlink "$XDG_CONFIG_HOME/sheldon/plugins.toml"
fi
if [ -e "$XDG_CONFIG_HOME/sheldon/plugins.toml" ]; then
  mv "$XDG_CONFIG_HOME/sheldon/plugins.toml" "$XDG_CONFIG_HOME"/sheldon/plugins.toml_"$(date +%Y-%m-%dT%H:%M:%S%z)"
fi
if [ -f "$SETTINGS_PATH/config/sheldon/plugins.toml" ]; then
  ln -s "$SETTINGS_PATH/config/sheldon/plugins.toml" "$XDG_CONFIG_HOME/sheldon/plugins.toml"
fi

find "$SETTINGS_PATH"/.* -maxdepth 0 -type f -exec sh -c '
    dot_file=$1
    dot_filename=$(basename "$dot_file")
    if [ -L "$HOME/$dot_filename" ]; then
      unlink "$HOME/$dot_filename"
    fi
    if [ -e "$HOME/$dot_filename" ]; then
      mv "$HOME/$dot_filename" "$HOME"/"$dot_filename"_"$(date +%Y-%m-%dT%H:%M:%S%z)"
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
  sudo mv /etc/my.cnf /etc/my.cnf_"$(date +%Y-%m-%dT%H:%M:%S%z)"
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
