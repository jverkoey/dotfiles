#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Copy gitignore_global
cp "$SCRIPT_DIR/.gitignore_global" ~/.gitignore_global

# Configure git to use the global gitignore
git config --global core.excludesfile ~/.gitignore_global

# Copy .bashrc file
if [ -f "$SCRIPT_DIR/.bashrc" ]; then
  cp "$SCRIPT_DIR/.bashrc" ~/.bashrc
  # Source the bashrc file to apply changes to current session
  source ~/.bashrc
  echo "Bashrc installed and sourced."
else
  echo "Warning: .bashrc file not found in dotfiles repository."
fi

echo "Dotfiles installation complete."
