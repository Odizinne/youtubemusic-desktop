#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="$HOME/.local/bin/youtubemusic-desktop"

mkdir -p "$INSTALL_DIR"

echo "Installing files in $INSTALL_DIR..."
cp -r "$SCRIPT_DIR"/* "$INSTALL_DIR"

DESKTOP_FILE="$HOME/.local/share/applications/youtubemusic.desktop"

cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Type=Application
Name=Youtube Music
Icon=$HOME/.local/bin/youtubemusic-desktop/ytmusic_icon.png
Exec=$HOME/.local/bin/youtubemusic-desktop/youtubemusic-desktop
Comment=Youtuve Music desktop application
Categories=Audio;
Terminal=false
EOL

echo "youtubemusic-desktop has been installed successfully."
echo "You can find it in your application menu."

