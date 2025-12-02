if has('nvim')
  let s:plugged_path = '~/.local/share/nvim/plugged'
else
  let s:plugged_path = '~/.vim/plugged'
endif

if has('vim_starting')
  call plug#begin(s:plugged_path)

  Plug 'xolox/vim-misc'
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'rhysd/vim-operator-surround'
  Plug 'kana/vim-textobj-user'
  Plug 'osyo-manga/vim-textobj-multiblock'
  Plug 'vim-scripts/AnsiEsc.vim'
  Plug 'vim-scripts/grep.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'junegunn/vim-easy-align'
  Plug 'kana/vim-niceblock'
  Plug 'Shougo/context_filetype.vim'
  Plug 'tyru/caw.vim'
  Plug 'tpope/vim-surround'
  Plug 'Raimondi/delimitMate'
  Plug 'kana/vim-smartchr'
  Plug 'taku-o/vim-toggle'
  Plug 'vim-scripts/ruby-matchit'
  Plug 'tpope/vim-endwise'
  Plug 'mattn/emmet-vim'
  Plug 'tyru/open-browser.vim'

  if !exists('g:vscode')
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'vim-scripts/ShowMarks'
    Plug 'lambdalisue/session.vim'
    Plug 'kana/vim-submode'
    Plug 'easymotion/vim-easymotion'
    Plug 'pbrisbin/vim-mkdir'
    Plug '/opt/homebrew/opt/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'mattn/vim-lsp-icons'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'vim-jp/syntax-vim-ex'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'tpope/vim-rails', { 'for': [ 'haml', 'slim', 'ruby', 'eruby' ] }
    Plug 'slim-template/vim-slim', { 'for': 'slim' }
    Plug 'tpope/vim-haml', { 'for': 'haml' }
    Plug 'kchmck/vim-coffee-script'
    Plug 'rainerborene/vim-reek'
    Plug 'othree/html5.vim'
    Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'sass', 'less', 'sacs' ] }
    Plug 'junegunn/vim-emoji'
    Plug 'codota/tabnine-vim', { 'for': ['javascript', 'typescript', 'ruby', 'python', 'css', 'html', 'sass', 'go', 'rust', 'scala', 'java', 'kotlin', 'haskell', 'perl', 'c', 'cpp', 'cs'] }
    " Plug 'github/copilot.vim'
  endif

  call plug#end()

  " autocmd VimEnter * PlugInstall --sync
  " autocmd VimEnter * PlugUpdate | PlugUpgrade
endif

