#!/usr/bin/env bash
# Copy the live configs into this repo (run from anywhere). Home paths become ~ / $HOME,
# and nothing outside this list is ever copied.
set -euo pipefail
repo="$(cd "$(dirname "$0")" && pwd)"
cfg="$HOME/.config"

copy() {  # copy <source> <destination inside repo>
    local src="$1" dst="$repo/$2"
    [[ -e $src ]] || { echo "skip (missing): $src"; return; }
    mkdir -p "$(dirname "$dst")"
    cp "$src" "$dst"
    sed -i "s|$HOME|~|g" "$dst"
}

# niri (+ the DMS include files it loads)
copy "$cfg/niri/config.kdl"                 niri/config.kdl
copy "$cfg/niri/custom.kdl"                 niri/custom.kdl
for f in "$cfg"/niri/dms/*.kdl; do copy "$f" "niri/dms/$(basename "$f")"; done

# terminal, GTK, colour templates
copy "$cfg/ghostty/config.ghostty"          ghostty/config.ghostty
copy "$cfg/gtk-4.0/gtk.css"                 gtk-4.0/gtk.css
copy "$cfg/matugen/config.toml"             matugen/config.toml
copy "$cfg/matugen/templates/obsidian-dms.css" matugen/templates/obsidian-dms.css
copy "$cfg/matugen/templates/btop.theme"    matugen/templates/btop.theme
copy "$cfg/matugen/templates/cava.config"   matugen/templates/cava.config
copy "$cfg/fastfetch/config.jsonc"          fastfetch/config.jsonc
[[ -f $cfg/fastfetch/cat.png ]] && cp "$cfg/fastfetch/cat.png" "$repo/fastfetch/cat.png"

# Zen browser stylesheet, DMS service override
for z in "$HOME"/.zen/*/chrome/userChrome.css; do copy "$z" zen/userChrome.css; break; done
copy "$cfg/systemd/user/dms.service.d/shell-dir.conf" systemd/dms.service.d/shell-dir.conf

# helper scripts
for s in clock dropterm shot-annotate dms-spotlight-tweak fedora-short-boot-titles; do
    copy "$HOME/.local/bin/$s" "bin/$s"; chmod +x "$repo/bin/$s"
done

# only the prompt part of .zshrc
mkdir -p "$repo/zsh"
awk '/^# right: branch/{p=1} p{print} /^RPROMPT=/{exit}' "$HOME/.zshrc" > "$repo/zsh/prompt.zsh"

# keyboard shortcuts doc
copy "$HOME/Documents/niri_shortcuts.md"    docs/shortcuts.md

echo "synced into $repo"
