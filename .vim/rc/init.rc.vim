let s:is_windows = has('win32') || has('win64')

function! IsWindows() abort
  return s:is_windows
endfunction

function! IsMac() abort
  return !s:is_windows && !has('win32unix')
      \ && (has('mac') || has('macunix') || has('gui_macvim')
      \     || (!executable('xdg-open') && trim(system('uname')) =~? '^darwin'))
endfunction

" Use English interface.
language message C

" Use ',' instead of '\'.
" Use <Leader> in global plugin.
let g:mapleader = '`'

" Use <LocalLeader> in filetype plugin.
let g:maplocalleader = '_'

if IsWindows()
  " Exchange path separator.
  set shellslash
endif

let $CACHE = expand('~/.cache')

if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

if filereadable(expand('~/.secret_vimrc'))
  execute 'source' expand('~/.secret_vimrc')
endif

" Load Python
let g:python3_host_prog = expand('$PYTHONPATH/python')

" Load vim-plug
if has('nvim')
  let s:plug_path = '~/.local/share/nvim/site/autoload/plug.vim'
else
  let s:plug_path = '~/.vim/autoload/plug.vim'
endif
let s:plug_url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
if empty(glob(s:plug_path))
  execute "!curl -fLo " . expand(s:plug_path) . " --create-dirs " . expand(s:plug_url)
endif

" Disable default plugins {{{

" Disable menu.vim
if has('gui_running')
   set guioptions=Mc
endif

" let g:loaded_gzip              = 1
" let g:loaded_tar               = 1
" let g:loaded_tarPlugin         = 1
" let g:loaded_zip               = 1
" let g:loaded_zipPlugin         = 1
" let g:loaded_rrhelper          = 1
" let g:loaded_2html_plugin      = 1
" let g:loaded_vimball           = 1
" let g:loaded_vimballPlugin     = 1
" let g:loaded_getscript         = 1
" let g:loaded_getscriptPlugin   = 1
" let g:loaded_netrw             = 1
" let g:loaded_netrwPlugin       = 1
" let g:loaded_netrwSettings     = 1
" let g:loaded_netrwFileHandlers = 1
" let g:loaded_matchparen        = 1
" let g:loaded_LogiPat           = 1
" let g:loaded_logipat           = 1
" let g:loaded_tutor_mode_plugin = 1
" let g:loaded_spellfile_plugin  = 1
" let g:loaded_man               = 1
" let g:loaded_matchit           = 1
" }}}

" Define augroup {{{
augroup MyAutoCmd
  autocmd!
augroup END
" }}}
