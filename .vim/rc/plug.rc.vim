if has('nvim')
  let s:plugged_path = '~/.local/share/nvim/plugged'
else
  let s:plugged_path = '~/.vim/plugged'
endif

if has('vim_starting')
  call plug#begin(s:plugged_path)

  Plug 'itchyny/lightline.vim'
  Plug 'w0rp/ale'
  Plug 'maximbaz/lightline-ale'
  Plug 'jceb/vim-hier'
  Plug 'rainerborene/vim-reek'
  Plug 'vim-scripts/ShowMarks'
  Plug 'tyru/caw.vim'
  Plug 'taku-o/vim-toggle'
  Plug 'kana/vim-submode'
  Plug 'xolox/vim-easytags'
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
  Plug 'Shougo/vimproc.vim', { 'do': 'make' }
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'rcmdnk/vim-markdown', { 'for': [ 'markdown', 'mkd', 'md' ] }
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'rhysd/vim-operator-surround'
  Plug 'kana/vim-textobj-user'
  Plug 'osyo-manga/vim-textobj-multiblock'
  Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'sass', 'less', 'sacs' ] }
  Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'vim-jp/syntax-vim-ex'
  Plug 'othree/html5.vim'
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/neocomplete.vim', { 'for': 'ruby' }
  endif

  Plug 'tpope/vim-rails', { 'for': [ 'haml', 'slim', 'ruby', 'eruby' ] }
  Plug 'tpope/vim-endwise'
  Plug 'alpaca-tc/neorspec.vim', { 'on': [ 'RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry' ] }
  Plug 'Shougo/context_filetype.vim'
  Plug 'ujihisa/vimshell-ssh', { 'for': 'vimshell' }
  Plug 'yomi322/vim-gitcomplete', { 'for': 'vimshell' }
  Plug 'Shougo/neoyank.vim', { 'on': 'Unite' }
  Plug 'Shougo/echodoc.vim'
  Plug 'Shougo/unite.vim', { 'on': 'Unite' }
  Plug 'Shougo/vimfiler.vim', { 'on': 'Unite' }
  Plug 'Shougo/unite-outline', { 'on': 'Unite' }
  Plug 'hewes/unite-gtags', { 'on': 'Unite' }
  Plug 'thinca/vim-unite-history', { 'on': 'Unite' }
  Plug 'osyo-manga/unite-filetype', { 'on': 'Unite' }
  Plug 'Shougo/unite-help', { 'on': 'Unite' }
  Plug 'tsukkee/unite-tag', { 'on': 'Unite' }
  Plug 'Shougo/junkfile.vim', { 'on': 'JunkFileOpen' }
  Plug 'ujihisa/unite-colorscheme', { 'on': 'Unite' }
  Plug 'basyura/unite-rails', { 'on': 'Unite', 'for': 'ruby' }
  Plug 'Shougo/vinarise.vim', { 'on': 'Vinarise' }
  Plug 'tpope/vim-bundler', { 'on': [ 'Bundle', 'BOpen' ] }
  Plug 'kana/vim-smartchr'
  Plug 'thinca/vim-ref'
  Plug 'yuku-t/vim-ref-ri', { 'for': 'ruby' }
  Plug 'moro/vim-review'
  Plug 'tpope/vim-fugitive'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'osyo-manga/vim-monster', { 'for': 'ruby' }
  Plug 'kana/vim-tabpagecd', { 'on': 'Unite' }
  Plug 'chikatoike/concealedyank.vim', { 'on': '<Plug>(operator-concealedyank)' }
  Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
  Plug 'mattn/emmet-vim'
  Plug 'vim-scripts/grep.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'kana/vim-niceblock'
  Plug 'pbrisbin/vim-mkdir'

  call plug#end()

  " autocmd VimEnter * PlugInstall --sync
  " autocmd VimEnter * PlugUpdate | PlugUpgrade
endif

