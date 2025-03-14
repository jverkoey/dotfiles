#!/bin/bash

# Copy gitignore_global
cp "$(dirname "$0")/.gitignore_global" ~/.gitignore_global

# Configure git to use the global gitignore
git config --global core.excludesfile ~/.gitignore_global

echo "Global gitignore installed and configured."
