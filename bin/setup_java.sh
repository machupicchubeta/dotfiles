#!/bin/bash
set -eu

rtx plugins update java
rtx install java@latest
rtx upgrade java@latest
rtx use --global java@latest
rtx prune java
rtx reshim

sudo ln -sfn "$(rtx where java@latest)" "/Library/Java/JavaVirtualMachines/openjdk.jdk"
