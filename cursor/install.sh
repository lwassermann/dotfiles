#!/usr/bin/env bash

# Override the target directory for Cursor
TARGET_DIR="$HOME/Library/Application Support/Cursor/User"

# Source the VSCode functions
source "$(dirname "$0")/../vscode/vscode-functions.sh"

cd vscode

# Use the sourced functions with Cursor-specific paths
link_configuration
install_extensions "cursor"
