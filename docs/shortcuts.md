# niri + DMS shortcuts

**Super** = the Windows key. Press **Super+Shift+/** any time to see the full list on screen.

## Apps & shell (DMS)
| Keys | Action |
|---|---|
| Super+Space | App launcher |
| Alt+Space | Launcher (compact search bar) |
| Super+T / Super+Return | Terminal (Ghostty, tiled) |
| Super+Shift+Return | Floating terminal |
| Super+` | Drop-down terminal (press again to hide; it keeps running) |
| Super+B | Zen browser |
| Super+E | Files (Dux) |
| Super+O | Obsidian |
| Super+Shift+S | Screenshot a region and annotate it in Gradia |
| Super+A | Control center (quick settings) |
| Super+D | Dashboard |
| Super+Ctrl+N | Notification center |
| Super+V | Clipboard history |
| Super+M | Media controls |
| Super+Y | Wallpapers (colours follow the wallpaper) |
| Super+, | DMS settings |
| Super+N | Notepad (Super+Shift+N to expand) |
| Super+Shift+C | Colour picker |
| Super+Alt+N | Night mode (warm screen) |
| Super+Alt+I | Keep awake (stop auto-lock) |
| Ctrl+Alt+Delete / Ctrl+Alt+M | Task manager |
| Super+X | Power menu |
| Super+Alt+L | Lock screen |
| Super+Shift+E | Log out of niri |
| Super+Shift+W | Create a window rule for the focused app |

## Volume, brightness, media
| Keys | Action |
|---|---|
| Volume Down / Volume Up keys | Volume −3% / +3% |
| Mute key | Mute speakers |
| Mic-mute key | Mute microphone |
| Ctrl+Volume Down / Up | Volume of the playing app only |
| Play/Pause, Prev, Next keys | Media control |
| Brightness Down / Up keys | Brightness −5% / +5% |

On most laptops the volume and brightness keys are on F1 to F12; if they act as F-keys, hold **Fn**.

## Screenshots
| Keys | Action |
|---|---|
| Print | Select a region |
| Ctrl+Print | Whole screen |
| Alt+Print | Focused window |

Saved to `~/Pictures/Screenshots`.

## Windows
| Keys | Action |
|---|---|
| Super+Q / Alt+F4 | Close window |
| Super+F | Fill screen width (again to undo) |
| Super+Shift+F | Fullscreen |
| Super+R | Cycle width: ⅓ → ½ → ⅔ |
| Super+Shift+R | Cycle height |
| Super+Ctrl+R | Reset height |
| Super+− / Super+= | Width −10% / +10% |
| Super+Shift+− / Super+Shift+= | Height −10% / +10% |
| Super+Ctrl+F | Expand to fill free space |
| Super+C | Centre the window |
| Super+Ctrl+C | Centre all visible windows |
| Super+W | Stack windows in this column as tabs |
| Super+[ / Super+] | Pull a window into / push it out of the column beside it |
| Super+. | Pop a window out of its column |

### Floating
| Keys | Action |
|---|---|
| Super+Shift+T | Float / tile the focused window |
| Super+Shift+V | Switch focus between floating and tiled |
| Super + left-drag | Move a window |
| Super + right-drag | Resize a window |

## Moving around (the scrolling strip)
Windows sit side by side on a strip that continues off the right of the screen.

| Keys | Action |
|---|---|
| Super+← / → (or Super+H / L) | Focus window left / right |
| Super+↑ / ↓ (or Super+K / J) | Focus window above / below in a column |
| Super+Home / End | First / last window |
| Super+Shift+← / → (or H / L) | Move window left / right |
| Super+Shift+↑ / ↓ (or K / J) | Move window up / down in a column |
| Super+Ctrl+Home / End | Move window to the start / end |
| Super+Tab | Overview of all windows & workspaces |
| 3-finger swipe left / right | Scroll the strip (touchpad) |
| Super+Shift+scroll wheel | Scroll the strip (mouse) |

## Workspaces (stacked vertically)
| Keys | Action |
|---|---|
| Super+1 / 2 / 3 / 4 | Go to the **web / code / study / media** workspace |
| Super+5 … 9 | Go to workspace 5 to 9 |
| Super+Shift+1 / 2 / 3 / 4 | Send window to web / code / study / media |
| Super+Shift+5 … 9 | Send window to workspace 5 to 9 |
| Super+Page Up / Down (or Super+I / U) | Workspace above / below |
| Super+Ctrl+↑ / ↓ (or Super+Ctrl+I / U) | Send window to workspace above / below |
| Super+Shift+Page Up / Down (or Super+Shift+I / U) | Move the whole workspace up / down |
| Super+scroll wheel | Switch workspace |
| Super+Alt+R | Rename workspace |
| 3-finger swipe up / down | Switch workspace (touchpad) |

## Monitors
| Keys | Action |
|---|---|
| Super+Ctrl+← / → (or H / L) | Focus monitor left / right |
| Super+Shift+Ctrl+← / → | Move window to monitor left / right |
| Super+P | Cycle display profiles |
| Super+Shift+P | Turn monitors off |

## Misc
| Keys | Action |
|---|---|
| Super+Escape | Let the focused app take all shortcuts (e.g. remote desktop, VMs); press again to undo |

## Terminal extras
| Command | What it does |
|---|---|
| `fastfetch` | System info with the Fedora logo |
| `clock` | Big pixel clock (`clock -s` adds seconds, `clock -c 2` changes colour, `clock -12` for 12-hour) |
| `cava` | Audio visualiser |
| `btop` | System monitor |
| `cmatrix` | Matrix rain |
| `cbonsai -l` | Grow a bonsai tree |
| `asciiquarium` | Aquarium |
| `fastfetch \| lolcat` | Rainbow colours |

`cmatrix`, `cbonsai`, `asciiquarium` and `lolcat` need installing: `sudo dnf install figlet toilet cmatrix cbonsai asciiquarium lolcat`.

## Where things live
- `~/.config/niri/custom.kdl`: personal niri overrides (gaps, border, blur, floating terminal). DMS never touches it.
- `~/.config/niri/dms/`: files generated by DMS; change them through DMS Settings instead.
- `~/.config/dms/settings.json`: DMS settings.

## Where apps open
Zen → web · VS Code → code · Obsidian → study · Stremio and Tune → media.
Terminals open at ⅓ width; Zen, VS Code and Obsidian at ⅔, so two fit side by side.
