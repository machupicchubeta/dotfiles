#!/bin/bash
set -eu

rtx plugins update node
rtx install node@lts
rtx upgrade node@lts
rtx install node@latest
rtx upgrade node@latest
rtx use --global node@latest
rtx prune node
rtx reshim

npm update -g
