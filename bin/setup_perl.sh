#!/bin/bash
set -eu

mise plugins install perl
mise plugins update perl
mise install perl@latest
mise upgrade perl@latest
mise use --global perl@latest
mise prune perl
mise reshim
