" for Terminal on macOS {{{
" let &t_SI.="\e[5 q" "SI = INSERT mode
" let &t_SR.="\e[1 q" "SR = REPLACE mode
" let &t_EI.="\e[3 q" "EI = NORMAL mode (ELSE)

let &t_SI = "\e[5 q" "SI = INSERT mode
let &t_SR = "\e[1 q" "SR = REPLACE mode
let &t_EI = "\e[3 q" "EI = NORMAL mode (ELSE)

" let &t_SI = "\<Esc>[5 q"
" let &t_SR = "\<Esc>[2 q"
" let &t_EI = "\<Esc>[3 q"

" let &t_SI="\033[5 q" " start insert mode (steady bar, xterm)
" let &t_EI="\033[3 q" " end insert mode
" }}}

" for iTerm2 on macOS {{{
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=0\x7"
let &t_EI = "\<Esc>]50;CursorShape=2\x7"
" }}}

set guicursor=n-v-o-c:hor10,i-ci-ve-sm:ver20,r-cr:block,a:blinkwait1000-blinkon1000-blinkoff1000
