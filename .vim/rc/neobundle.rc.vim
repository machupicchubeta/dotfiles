if has('vim_starting')
  filetype off
  set runtimepath+=~/.vim/bundle/neobundle.vim

  call neobundle#begin(expand('~/.vim/.bundle'))

  NeoBundleFetch 'Shougo/neobundle.vim'

  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'vim-scripts/ShowMarks'
  NeoBundle 'tyru/caw.vim'
  NeoBundle 'taku-o/vim-toggle'
  NeoBundle 'kana/vim-submode'
  NeoBundle 'xolox/vim-easytags'
  NeoBundle 'xolox/vim-misc'
  NeoBundle 'bronson/vim-trailing-whitespace'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'nathanaelkane/vim-indent-guides'
  NeoBundle 'vim-scripts/AnsiEsc.vim'
  NeoBundle 'junegunn/vim-easy-align'
  NeoBundle 'Raimondi/delimitMate'
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'vim-scripts/ruby-matchit'
  NeoBundle 'tyru/open-browser.vim'
  NeoBundle 'cespare/vim-toml', {
        \ 'on_ft' : 'toml'
        \ }
  NeoBundle 'slim-template/vim-slim', {
        \ 'on_ft' : 'slim'
        \ }

  if has('nvim')
    NeoBundle 'Shougo/deoplete.nvim'
  else
    NeoBundle 'Shougo/neocomplete.vim', {
          \ 'depends' : 'context_filetype.vim'
          \ }
  endif

  NeoBundleLazy 'tpope/vim-rails', {
        \ 'autoload' : {
        \   'filetypes' : ['haml', 'slim', 'ruby', 'eruby']
        \ }}
  NeoBundleLazy 'tpope/vim-endwise', {
        \ 'autoload' : {
        \   'insert' : 1,
        \ }}
  NeoBundleLazy 'alpaca-tc/neorspec.vim', {
        \ 'depends' : ['alpaca-tc/vim-rails', 'tpope/vim-dispatch'],
        \ 'autoload' : {
        \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
        \ }}
  NeoBundleLazy 'Shougo/context_filetype.vim'

  call neobundle#end()

  filetype plugin indent on

  NeoBundleCheck
endif
