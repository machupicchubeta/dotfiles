#!/bin/bash
set -eu

mise plugins install terraform
mise plugins update terraform
mise install terraform@latest
mise upgrade terraform@latest
mise use --global terraform@latest
mise prune --yes terraform
mise reshim
