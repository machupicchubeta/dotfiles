#!/bin/bash
set -eu

COMMAND_LINE_TOOLS_PATH='/Library/Developer/CommandLineTools'
sudo rm -rf "$COMMAND_LINE_TOOLS_PATH"
xcode-select --install > /dev/null 2>&1
sleep 1
osascript > /dev/null << EOD
tell application "System Events"
  tell process "Install Command Line Developer Tools"
    click button "Install" of first window
    click button "Agree" of window "License Agreement"
    repeat
      delay 0.5
      try
        if name of first button of first window contains "Done" then
          click button "Done" of first window
          exit repeat
        end if
      on error
        -- do nothing
      end try
    end repeat
  end tell
end tell
EOD
sudo xcode-select --switch "$COMMAND_LINE_TOOLS_PATH"
xcode-select --print-path
