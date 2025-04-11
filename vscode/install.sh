#!/usr/bin/env bash

# Default target directory for VSCode
TARGET_DIR="${TARGET_DIR:-$HOME/Library/Application Support/Code/User}"

# Source the functions
source "$(dirname "$0")/vscode-functions.sh"

cd vscode

link_configuration
install_extensions "code"
