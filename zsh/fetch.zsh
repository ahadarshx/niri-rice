# --- fetch: every new Ghostty window ------------------------------------------
# fastfetch with an animated pixel bat (~/.local/bin/fetch); it plays until you press a key,
# and that key lands on the prompt so you can just start typing
if [[ -o interactive && "$TERM" == xterm-ghostty ]] && (( $+commands[fastfetch] )); then
  _ff_keys="${XDG_RUNTIME_DIR:-/tmp}/fetch-keys-$$"
  fetch --style bat --keys "$_ff_keys"
  [[ -s $_ff_keys ]] && print -z -- "$(<$_ff_keys)"
  rm -f "$_ff_keys"; unset _ff_keys
fi

