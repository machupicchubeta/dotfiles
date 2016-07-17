" Use sh.  It is faster
set shell=sh

" Set path.
let $PATH = expand('~/bin').':/usr/local/bin/:'.$PATH

" Enable 256 color terminal.
if !has('gui_running')
  set t_Co=256
end
