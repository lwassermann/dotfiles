#!/usr/bin/env bash

# Symlink the Visual Studio Code configuration, since they don't live in $HOME.

link_configuration () {
  local target="$HOME/Library/Application Support/Code/User/"

  mkdir -p "$target"

  ln -sf "./settings.json" "$target"
  ln -sf "./snippets" "$target"

  if [ -f "./keybindings.json" ]
  then
    ln -sf "./keybindings.json" "$target"
  fi
}


# Based on from https://github.com/br3ndonland/dotfiles/blob/main/script/vscode-extensions.sh
install_extensions () {
  echo "Installing extensions"

  local installed=("$($1 --list-extensions --show-versions)")
  while read -r extension_name; do
    local extension_info
    extension_info=$(printf %s "${installed[@]}" | grep "$extension_name@")
    if [ "$extension_info" ]; then
      printf "Extension '%s' is already installed.\n" "$extension_info"
    else
      $1 --install-extension "$extension_name"
    fi
  done <"./extensions.txt"
}

link_configuration
install_extensions "$@"
