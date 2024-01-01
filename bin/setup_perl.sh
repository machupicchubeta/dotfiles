#!/bin/bash
set -eu

rtx plugins install perl
rtx plugins update perl
rtx install perl@latest
rtx upgrade perl@latest
rtx use --global perl@latest
rtx prune perl
rtx reshim
