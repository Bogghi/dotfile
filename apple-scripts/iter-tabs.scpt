-- Change this to your repo path
set SRC_DIR to POSIX file "/Users/matteoborghi/src"

tell application "iTerm2"
  activate
  set newWindow to (create window with default profile)

  -- Tab 1: lazygit
  tell current session of newWindow
    write text "lazygit"
    delay 0.25
    write text ""
  end tell

  -- Tab 2: cd to source and run codex
  tell newWindow
    create tab with default profile
  end tell
  tell current session of newWindow
    write text "cd " & quoted form of POSIX path of SRC_DIR & " && clear"
  end tell

  -- Tab 3: spare navigation
  tell newWindow
    create tab with default profile
  end tell
  tell current session of newWindow
  end tell
end tell

