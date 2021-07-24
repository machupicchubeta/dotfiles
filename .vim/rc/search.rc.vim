" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" If the search pattern contains upper case characters, override ignorecase option.
set smartcase

" Highlight dynamically as pattern is typed
set incsearch

" Searches wrap around the end of the file.
set wrapscan

" Automatically open quickfix-window on grep {{{
autocmd QuickFixCmdPost *grep* cwindow
" }}}
