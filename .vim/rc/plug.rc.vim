if has('nvim')
  let s:plugged_path = '~/.local/share/nvim/plugged'
else
  let s:plugged_path = '~/.vim/plugged'
endif

if has('vim_starting')
  call plug#begin(s:plugged_path)

  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'mattn/vim-lsp-icons'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'itchyny/lightline.vim'
  Plug 'jceb/vim-hier'
  Plug 'rainerborene/vim-reek'
  Plug 'vim-scripts/ShowMarks'
  Plug 'tyru/caw.vim'
  Plug 'taku-o/vim-toggle'
  Plug 'kana/vim-submode'
  Plug 'xolox/vim-misc'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'tpope/vim-surround'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'vim-scripts/AnsiEsc.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'Raimondi/delimitMate'
  Plug 'altercation/vim-colors-solarized'
  Plug 'vim-scripts/ruby-matchit'
  Plug 'tyru/open-browser.vim'
  Plug 'slim-template/vim-slim', { 'for': 'slim' }
  Plug 'tpope/vim-haml', { 'for': 'haml' }
  Plug 'Shougo/vimproc.vim', { 'do': 'make' }
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'rhysd/vim-operator-surround'
  Plug 'kana/vim-textobj-user'
  Plug 'osyo-manga/vim-textobj-multiblock'
  Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'sass', 'less', 'sacs' ] }
  Plug 'vim-jp/syntax-vim-ex'
  Plug 'othree/html5.vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'tpope/vim-rails', { 'for': [ 'haml', 'slim', 'ruby', 'eruby' ] }
  Plug 'tpope/vim-endwise'
  Plug 'Shougo/context_filetype.vim'
  Plug 'kana/vim-smartchr'
  Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'vim-scripts/grep.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'kana/vim-niceblock'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'junegunn/vim-emoji'
  Plug 'lambdalisue/session.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'

  call plug#end()

  " autocmd VimEnter * PlugInstall --sync
  " autocmd VimEnter * PlugUpdate | PlugUpgrade
endif

