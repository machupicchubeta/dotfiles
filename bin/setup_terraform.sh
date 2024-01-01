#!/bin/bash
set -eu

rtx plugins install terraform
rtx plugins update terraform
rtx install terraform@latest
rtx upgrade terraform@latest
rtx use --global terraform@latest
rtx prune terraform
rtx reshim
