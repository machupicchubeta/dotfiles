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
  NeoBundle 'Shougo/vimproc.vim', {
        \ 'build' : {
        \   'windows' : 'tools\\update-dll-mingw',
        \   'cygwin' : 'make -f make_cygwin.mak',
        \   'mac' : 'make',
        \   'linux' : 'make',
        \   'unix' : 'gmake',
        \ }}
  NeoBundle 'vim-ruby/vim-ruby', {
        \ 'on_ft' : 'ruby'
        \ }
  NeoBundle 'elzr/vim-json', {
        \ 'on_ft' : 'json'
        \ }
  NeoBundle 'rcmdnk/vim-markdown', {
        \ 'on_ft' : ['markdown', 'mkd', 'md']
        \ }
  NeoBundle 'kana/vim-operator-user'
  NeoBundle 'kana/vim-operator-replace', {
        \ 'depends' : 'vim-operator-user'
        \ }
  NeoBundle 'rhysd/vim-operator-surround', {
        \ 'depends' : 'vim-operator-user'
        \ }
  NeoBundle 'kana/vim-textobj-user'
  NeoBundle 'osyo-manga/vim-textobj-multiblock', {
        \ 'depends' : 'vim-textobj-user'
        \ }
  NeoBundle 'hail2u/vim-css3-syntax'
  NeoBundle 'mxw/vim-jsx', {
        \ 'on_ft' : 'javascript'
        \ }
  NeoBundle 'jiangmiao/simple-javascript-indenter', {
        \ 'on_ft' : 'javascript'
        \ }
  NeoBundle 'jelera/vim-javascript-syntax', {
        \ 'on_ft' : 'javascript'
        \ }
  NeoBundle  'vim-jp/syntax-vim-ex'

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
  NeoBundleLazy 'ujihisa/vimshell-ssh', {
        \ 'autoload' : {
        \   'filetypes' : 'vimshell'
        \ }}
  NeoBundleLazy 'yomi322/vim-gitcomplete', {
        \ 'autoload' : {
        \    'filetypes' : 'vimshell'
        \ }}
  NeoBundleLazy 'Shougo/neoyank.vim', {
        \ 'autoload' : {
        \   'on_source' : 'unite.vim'
        \ }}
  NeoBundleLazy 'Shougo/echodoc.vim', {
        \ 'autoload' : {
        \   'insert' : 1,
        \   'on_source' : 'call echodoc#enable()'
        \ }}
  NeoBundleLazy 'Shougo/unite.vim', {
        \ 'autoload' : {
        \   'on_cmd' : 'Unite'
        \ }}
  NeoBundleLazy 'Shougo/vimfiler.vim', {
        \ 'depends' : 'unite.vim',
        \ 'autoload' : {
        \   'on_map' : '<Plug>'
        \ }}
  NeoBundleLazy 'Shougo/unite-outline', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'hewes/unite-gtags', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'thinca/vim-unite-history', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'osyo-manga/unite-filetype', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'Shougo/unite-help', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'tsukkee/unite-tag', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'Shougo/junkfile.vim', {
        \ 'depends' : 'unite.vim',
        \ 'autoload' : {
        \   'on_cmd' : 'JunkFileOpen'
        \ }}
  NeoBundleLazy 'ujihisa/unite-colorscheme', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'basyura/unite-rails', {
        \ 'depends' : 'unite.vim',
        \ 'autoload' : {
        \   'on_ft' : 'ruby'
        \ }}
  NeoBundleLazy 'Shougo/vinarise.vim', {
        \ 'autoload' : {
        \   'on_cmd' : 'Vinarise'
        \ }}
  NeoBundleLazy 'thinca/vim-quickrun', {
        \ 'autoload' : {
        \   'on_map' : '<Plug>',
        \   'on_cmd' : 'QuickRun'
        \ }}
  NeoBundleLazy 'tpope/vim-bundler', {
        \ 'autoload' : {
        \   'on_cmd' : ['Bundle', 'BOpen']
        \ }}
  NeoBundleLazy 'kana/vim-smartchr', {
        \ 'autoload' : {
        \   'on_i' : 1
        \ }}
  NeoBundleLazy 'thinca/vim-ref', {
        \ 'autoload' : {
        \   'on_map' : '<Plug>'
        \ }}
  NeoBundleLazy 'yuku-t/vim-ref-ri', {
        \ 'autoload' : {
        \   'on_ft' : 'ruby'
        \ }}
  NeoBundleLazy 'moro/vim-review'
  NeoBundleLazy 'tpope/vim-fugitive'
  NeoBundleLazy 'ctrlpvim/ctrlp.vim'
  NeoBundleLazy 'osyo-manga/vim-monster', {
        \ 'autoload' : {
        \   'on_ft' : 'ruby'
        \ }}
  NeoBundleLazy 'kana/vim-tabpagecd', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundleLazy 'todesking/ruby_hl_lvar.vim', {
        \ 'autoload' : {
        \    'on_ft' : 'ruby'
        \ }}
  NeoBundleLazy 'chikatoike/concealedyank.vim', {
        \ 'autoload' : {
        \   'on_map' : '<Plug>(operator-concealedyank)'
        \ }}
  NeoBundleLazy 'thoughtbot/vim-rspec', {
        \ 'autoload' : {
        \   'on_ft' : 'ruby'
        \ }}
  NeoBundleLazy 'mattn/emmet-vim'
  NeoBundleLazy 'vim-scripts/grep.vim'
  NeoBundleLazy 'easymotion/vim-easymotion', {
        \ 'autoload' : {
        \   'on_map' : '<Plug>'
        \ }}
  NeoBundleLazy 'kana/vim-niceblock', {
        \ 'autoload' : {
        \   'on_map' : '<Plug>'
        \ }}

  call neobundle#end()

  filetype plugin indent on

  NeoBundleCheck
endif
