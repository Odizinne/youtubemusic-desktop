#!/bin/bash

INSTALL_DIR="$HOME/.local/bin/youtubemusic-desktop"
DESKTOP_FILE="$HOME/.local/share/applications/youtubemusic.desktop"

echo "Uninstalling Youtube Music..."

rm -rf "$INSTALL_DIR"
rm "$DESKTOP_FILE"

echo "youtubemusic-desktop has been uninstalled successfully."
