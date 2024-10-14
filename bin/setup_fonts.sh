#!/bin/bash
set -eu

USER_FONT_DIR="$HOME/Library/Fonts/"
TEMP_DIR="/tmp"

echo -e "\nInstall \"Source Han Code JP\" to the user font directory"
SOURCE_HAN_CODE_JP_VERSION="2.012R"
SOURCE_HAN_CODE_JP_FONTS=source-han-code-jp-"$SOURCE_HAN_CODE_JP_VERSION"
curl --fail --silent --show-error --location https://github.com/adobe-fonts/source-han-code-jp/archive/refs/tags/"$SOURCE_HAN_CODE_JP_VERSION".zip --output "$TEMP_DIR"/"$SOURCE_HAN_CODE_JP_FONTS".zip
unzip -q "$TEMP_DIR"/"$SOURCE_HAN_CODE_JP_FONTS".zip -d "$TEMP_DIR"
rm --force "$TEMP_DIR"/"$SOURCE_HAN_CODE_JP_FONTS".zip
if [ -d "$TEMP_DIR"/"$SOURCE_HAN_CODE_JP_FONTS" ]; then
  find "$USER_FONT_DIR" -type f -name "SourceHanCodeJP-*" -exec rm --recursive --force {} +
  find "$TEMP_DIR"/"$SOURCE_HAN_CODE_JP_FONTS" -type f \( -name '*.ttc' -or -name '*.otf' \) -exec mv --target-directory="$USER_FONT_DIR" {} +
  rm --recursive --force "$TEMP_DIR"/"$SOURCE_HAN_CODE_JP_FONTS"
fi

echo -e "\nInstall \"Moralerspace\" font families"
find "$USER_FONT_DIR" -type f -name "Moralerspace*" -exec rm --recursive --force {} +
MORALERSPACE_FAMILIES=(
  "Moralerspace"
  "MoralerspaceHW"
  "MoralerspaceJPDOC"
  "MoralerspaceHWJPDOC"
  "MoralerspaceNF"
  "MoralerspaceHWNF"
)
MORALERSPACE_VERSION="v0.0.11"
for font_family in "${MORALERSPACE_FAMILIES[@]}"
do
  echo -e "\nInstall \"$font_family\" to the user font directory"
  fonts="$font_family"_"$MORALERSPACE_VERSION"
  curl --fail --silent --show-error --location https://github.com/yuru7/moralerspace/releases/download/"$MORALERSPACE_VERSION"/"$fonts".zip --output "$TEMP_DIR"/"$fonts".zip
  unzip -q "$TEMP_DIR"/"$fonts".zip -d "$TEMP_DIR"
  rm --force "$TEMP_DIR"/"$fonts".zip
  if [ -d "$TEMP_DIR"/"$fonts" ]; then
    find "$TEMP_DIR"/"$fonts" -type f -name '*.ttf' -exec mv --target-directory="$USER_FONT_DIR" {} +
    rm --recursive --force "${TEMP_DIR:?}"/"$fonts"
  fi
  unset fonts
  unset font_family
done

unset TMP_DIR
unset USER_FONT_DIR
unset SOURCE_HAN_CODE_JP_FONTS
unset SOURCE_HAN_CODE_JP_VERSION
unset MORALERSPACE_FAMILIES
unset MORALERSPACE_VERSION
