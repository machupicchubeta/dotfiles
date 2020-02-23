#!/bin/bash
set -eu
set -o pipefail

sudo chmod +w /etc/pam.d/sudo
if ! grep -Eq '^auth\s.*\spam_tid\.so$' /etc/pam.d/sudo; then
    ( set -e; set -o pipefail
      # Add "pam_tid.so" to a first authentication
      pam_sudo=$(awk 'fixed||!/^auth /{print} !fixed&&/^auth/{print "auth       sufficient     pam_tid.so";print;fixed=1}' /etc/pam.d/sudo)
      sudo tee /etc/pam.d/sudo <<<"$pam_sudo"
    )
fi
