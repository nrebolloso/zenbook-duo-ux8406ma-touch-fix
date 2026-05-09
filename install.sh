#!/usr/bin/env bash
# Installer for zenbook-duo-screen-fix.
# Copies `duo` to /usr/local/bin and sets up an autostart entry for the current user.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AUTOSTART_DIR="$HOME/.config/autostart"

echo "Installing /usr/local/bin/duo (sudo required)..."
sudo install -m 755 -o root -g root "$SCRIPT_DIR/duo" /usr/local/bin/duo

echo "Adding autostart entry at $AUTOSTART_DIR/zenbook-duo-helper.desktop..."
mkdir -p "$AUTOSTART_DIR"
cp "$SCRIPT_DIR/zenbook-duo-helper.desktop" "$AUTOSTART_DIR/zenbook-duo-helper.desktop"

echo
echo "Installed. Either log out and back in, or run:"
echo "  /usr/local/bin/duo watch-displays &"
echo "to start the helper now without restarting your session."
