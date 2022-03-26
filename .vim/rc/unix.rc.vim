set shell=zsh

if trim(system("uname -m")) == "arm64"
  let $PATH = expand('~/bin').':/opt/homebrew/bin/:'.$PATH
else
  let $PATH = expand('~/bin').':/usr/local/bin/:'.$PATH
endif

if !has('gui_running')
  set t_Co=256
end
