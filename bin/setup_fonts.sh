#!/bin/bash
set -eu

USER_FONT_DIR="$HOME/Library/Fonts/"

echo -e "\nInstall \"Source Han Code JP\" to the user font directory"
curl -fsSL https://github.com/adobe-fonts/source-han-code-jp/archive/refs/tags/2.012R.tar.gz | tar -xzC /tmp/
SOURCE_HAN_CODE_JP_TEMP_DIR="/tmp/source-han-code-jp-2.012R"
if [ -d "$SOURCE_HAN_CODE_JP_TEMP_DIR" ]; then
  find "$USER_FONT_DIR" -type f -name "SourceHanCodeJP-*" | xargs rm --recursive --force
  find "$SOURCE_HAN_CODE_JP_TEMP_DIR" -type f -name '*.ttc' -or -name '*.otf' -exec mv --target-directory="$USER_FONT_DIR" {} +
  rm --recursive --force "$SOURCE_HAN_CODE_JP_TEMP_DIR"
fi

unset SOURCE_HAN_CODE_JP_TEMP_DIR
unset USER_FONT_DIR
