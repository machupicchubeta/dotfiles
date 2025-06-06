#!/bin/bash
set -eu

mise install java@latest
mise upgrade java@latest
mise use --global java@latest
mise prune --yes java
mise reshim

sudo ln -sfn "$(mise where java@latest)" "/Library/Java/JavaVirtualMachines/openjdk.jdk"
