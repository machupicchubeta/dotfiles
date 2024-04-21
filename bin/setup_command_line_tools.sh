#!/bin/bash
set -eu

COMMAND_LINE_TOOLS_PATH='/Library/Developer/CommandLineTools'

if [ -d "$COMMAND_LINE_TOOLS_PATH/usr/bin" -a -d "$COMMAND_LINE_TOOLS_PATH/SDKs" ]; then
  echo -e "Skip the (re)installation of CommandLineTools.\nSince usr/bin and SDKs directories exist under $COMMAND_LINE_TOOLS_PATH, (re)installation is unlikely to be necessary.\nIf you are forced to re-install, remove those directories before executing the command."
  sudo xcodebuild -license accept
  exit 0
fi

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
xcode-select --print-path

sudo xcodebuild -license accept
