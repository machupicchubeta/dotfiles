#!/bin/bash
set -eu

if [ "$(uname -m)" = "x86_64" ]; then
  : "${HOMEBREW_PREFIX:=/usr/local}"
elif [ "$(uname -m)" = "arm64" ]; then
  : "${HOMEBREW_PREFIX:=/opt/homebrew}"
fi

if [ ! -L '/Library/Java/JavaVirtualMachines/openjdk.jdk' ]; then
  sudo ln -sfn $HOMEBREW_PREFIX/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
fi

eval "$(jenv init -)"

jenv add $(/usr/libexec/java_home)
