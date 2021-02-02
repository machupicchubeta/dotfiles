#!/bin/bash
set -eu

COMMAND_LINE_TOOLS_PATH='/Library/Developer/CommandLineTools'
if [[ $(xcode-select --print-path) != "$COMMAND_LINE_TOOLS_PATH" ]]; then
  sudo rm -rf "$COMMAND_LINE_TOOLS_PATH"
  xcode-select --install
  sudo xcode-select -s "$COMMAND_LINE_TOOLS_PATH"
fi

# If the "Command Line Tools" installed via Xcode that is necessary to agree with its license to using it.
# But, in this case, it is using "Command Line Tools" installed via command-line, so that is unnecessary to `xcodebuild --license` command.
# If run the command that occurs an error as the following.
# Error was:
# > xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance
# sudo xcodebuild -license

xcode-select --print-path
