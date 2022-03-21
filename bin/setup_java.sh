#!/bin/bash
set -eu

if [ ! -L '/Library/Java/JavaVirtualMachines/openjdk.jdk' ]; then
  sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
fi

eval "$(jenv init -)"

jenv add $(/usr/libexec/java_home)
