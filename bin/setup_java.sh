#!/bin/bash
set -eu

jenv add $(/usr/libexec/java_home)

eval "$(jenv init -)"
