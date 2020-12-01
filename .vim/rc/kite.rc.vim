let g:kite_supported_languages = ['*']
let g:kite_tab_complete = 1
set completeopt += preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff += ctrlg
set statusline = %<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus = 2
