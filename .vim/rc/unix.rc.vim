set shell=sh

let $PATH = expand('~/bin').':/usr/local/bin/:'.$PATH

if !has('gui_running')
  set t_Co=256
end
