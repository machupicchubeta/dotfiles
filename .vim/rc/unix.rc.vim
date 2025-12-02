set shell=zsh

let $PATH = expand('~/bin').':/opt/homebrew/bin/:'.$PATH

if !has('gui_running')
  set t_Co=256
end
