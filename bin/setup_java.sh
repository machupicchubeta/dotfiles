#!/bin/bash
set -eu

jenv add $(/usr/libexec/java_home -v 1.8)
jenv add $(/usr/libexec/java_home)

eval "$(jenv init -)"
