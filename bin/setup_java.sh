#!/bin/bash
set -eu

mise install java@lts
mise upgrade java@lts
mise use --global java@lts
mise prune --yes java
mise reshim

sudo ln -sfn "$(mise where java@lts)" "/Library/Java/JavaVirtualMachines/openjdk.jdk"
