#!/bin/zsh
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Iter Tabs
# @raycast.mode silent
# @raycast.packageName Dev

# Optional parameters:
# @raycast.icon 🧰
# @raycast.argument1 { "type": "text", "placeholder": "Source dir", "optional": true }

SCPT="$HOME/dotfile/apple-scripts/iter-tabs.scpt"   # point this at your script
SRC="${1:-$HOME/src/project}"     # optional arg from Raycast

# If your AppleScript doesn't accept argv, remove $SRC below.
/usr/bin/osascript "$SCPT" "$SRC"

