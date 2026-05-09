# zenbook-duo-ux8406ma-screen-fix

Dual-screen and dual-touchscreen helper for the **ASUS Zenbook Duo (UX8406MA)** on **Linux Mint (Cinnamon, X11)**.

- Detach the keyboard → both screens turn on, stacked vertically.
- Attach the keyboard → bottom screen turns off, top screen becomes primary.
- Touch always lands on the screen you actually touched, in either mode.

## Install

```bash
sudo apt install x11-xserver-utils xinput inotify-tools usbutils
git clone https://github.com/nrebolloso/zenbook-duo-ux8406ma-screen-fix.git
cd zenbook-duo-ux8406ma-touch-fix
./install.sh
```

Log out and back in (or run `/usr/local/bin/duo watch-displays &`) to start the helper. Attach/detach the keyboard once to confirm.

## Manual commands

```bash
duo top      # top screen only
duo both     # both screens stacked
duo normal   # auto-detect from keyboard state
```

## Scope

UX8406MA on X11. Wayland is not supported (`xinput`/`xrandr` are X-only). For non-3K variants, edit `RESOLUTION`/`RATE` at the top of `duo`.

## Credits

Concept inspired by the GNOME-targeted [zenbook-duo-2024-ux8406ma-linux](https://github.com/alesya-h/zenbook-duo-2024-ux8406ma-linux) by Alesya Huzik.

## License

MIT.
