#!/bin/bash

# Ensure the backup directory exists
mkdir -p ~/.dotfiles/gnome/extensions

# Backup GNOME extensions
cp -r ~/.local/share/gnome-shell/extensions/* ~/.dotfiles/gnome/extensions/
dconf dump /org/gnome/shell/extensions/ > ~/.dotfiles/gnome/extensions.dconf

echo "Backup completed successfully!"
