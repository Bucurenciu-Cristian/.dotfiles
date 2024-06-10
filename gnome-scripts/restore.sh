#!/bin/bash

# Ensure the restore directory exists
mkdir -p ~/.local/share/gnome-shell/extensions

# Restore GNOME extensions
cp -r ~/.dotfiles/gnome/extensions/* ~/.local/share/gnome-shell/extensions/
dconf load /org/gnome/shell/extensions/ < ~/.dotfiles/gnome/extensions.dconf

# Restart GNOME Shell
gnome-shell --replace &

echo "Restore completed successfully!"

