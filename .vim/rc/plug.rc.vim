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
  Plug 'cespare/vim-toml', { 'for': 'toml' }
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
  Plug 'ecomba/vim-ruby-refactoring'
  Plug 'tpope/vim-rails', { 'for': [ 'haml', 'slim', 'ruby', 'eruby' ] }
  Plug 'tpope/vim-endwise'
  Plug 'alpaca-tc/neorspec.vim', { 'on': [ 'RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry' ] }
  Plug 'Shougo/context_filetype.vim'
  Plug 'ujihisa/vimshell-ssh', { 'for': 'vimshell' }
  Plug 'yomi322/vim-gitcomplete', { 'for': 'vimshell' }
  Plug 'Shougo/echodoc.vim'
  Plug 'Shougo/junkfile.vim', { 'on': 'JunkFileOpen' }
  Plug 'Shougo/vinarise.vim', { 'on': 'Vinarise' }
  Plug 'tpope/vim-bundler', { 'on': [ 'Bundle', 'Bopen' ] }
  Plug 'kana/vim-smartchr'
  Plug 'thinca/vim-ref'
  Plug 'yuku-t/vim-ref-ri', { 'for': 'ruby' }
  Plug 'moro/vim-review'
  Plug 'tpope/vim-fugitive'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'chikatoike/concealedyank.vim', { 'on': '<Plug>(operator-concealedyank)' }
  Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
  Plug 'mattn/emmet-vim'
  Plug 'vim-scripts/grep.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'kana/vim-niceblock'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'Shougo/denite.nvim'
  if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'junegunn/vim-emoji'
  Plug 'pocari/vim-denite-emoji'
  Plug 'motemen/ghq'
  Plug 'Jagua/vim-denite-ghq'
  Plug 'ozelentok/denite-gtags'
  Plug 'chemzqm/unite-location'
  Plug '5t111111/denite-rails'
  Plug 'lambdalisue/session.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'

  call plug#end()

  " autocmd VimEnter * PlugInstall --sync
  " autocmd VimEnter * PlugUpdate | PlugUpgrade
endif

