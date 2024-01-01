#!/bin/bash
set -eu

rtx plugins update go
rtx install go@latest
rtx upgrade go@latest
rtx use --global go@latest
rtx prune go
rtx reshim
