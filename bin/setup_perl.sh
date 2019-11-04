#!/bin/bash
set -eu

PERL_BUILD_PATH="$(plenv root)/plugins/perl-build"
if [ ! -d $PERL_BUILD_PATH ]; then
  git clone git://github.com/tokuhirom/Perl-Build.git $PERL_BUILD_PATH
else
  cd $PERL_BUILD_PATH && git checkout master && git pull --rebase --prune
fi

latest_perl5_version=$(plenv install -l | grep -E '^\s+5\.\d+\.\d+$' | awk -F'[.]' '{ if ($2 %2 == 0) print $0 }' | head -n 1 | sed -e 's/^[ ]*//g')
if ! [[ $(plenv versions | grep $latest_perl5_version) ]]; then
  plenv install $latest_perl5_version
fi
plenv global $latest_perl5_version
plenv rehash
