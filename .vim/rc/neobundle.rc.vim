if has('vim_starting')
  filetype off
  set runtimepath+=~/.vim/bundle/neobundle.vim

  call neobundle#begin(expand('~/.vim/.bundle'))

  NeoBundleFetch 'Shougo/neobundle.vim'

  NeoBundle 'itchyny/lightline.vim'
  NeoBundle "thinca/vim-quickrun"
  NeoBundle "osyo-manga/shabadou.vim"
  NeoBundle "dannyob/quickfixstatus"
  NeoBundle "osyo-manga/vim-watchdogs"
  NeoBundle "jceb/vim-hier"
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
          \ 'depends' : 'context_filetype.vim',
          \ 'on_ft' : 'ruby'
          \ }
  endif

  NeoBundle 'tpope/vim-rails', {
        \ 'on_ft' : ['haml', 'slim', 'ruby', 'eruby']
        \ }
  NeoBundle 'tpope/vim-endwise', {
        \ 'on_i' : 1,
        \ }
  NeoBundle 'alpaca-tc/neorspec.vim', {
        \ 'depends' : ['alpaca-tc/vim-rails', 'tpope/vim-dispatch'],
        \ 'on_cmd' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
        \ }
  NeoBundle 'Shougo/context_filetype.vim'
  NeoBundle 'ujihisa/vimshell-ssh', {
        \ 'on_ft' : 'vimshell'
        \ }
  NeoBundle 'yomi322/vim-gitcomplete', {
        \  'on_ft' : 'vimshell'
        \ }
  NeoBundle 'Shougo/neoyank.vim', {
        \ 'on_source' : 'unite.vim'
        \ }
  NeoBundle 'Shougo/echodoc.vim', {
        \ 'on_i' : 1,
        \ 'on_source' : 'call echodoc#enable()'
        \ }
  NeoBundle 'Shougo/unite.vim', {
        \ 'on_cmd' : 'Unite'
        \ }
  NeoBundle 'Shougo/vimfiler.vim', {
        \ 'depends' : 'unite.vim',
        \ 'on_map' : '<Plug>'
        \ }
  NeoBundle 'Shougo/unite-outline', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'hewes/unite-gtags', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'thinca/vim-unite-history', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'osyo-manga/unite-filetype', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'Shougo/unite-help', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'tsukkee/unite-tag', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'Shougo/junkfile.vim', {
        \ 'depends' : 'unite.vim',
        \ 'on_cmd' : 'JunkFileOpen'
        \ }
  NeoBundle 'ujihisa/unite-colorscheme', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'basyura/unite-rails', {
        \ 'depends' : 'unite.vim',
        \ 'on_ft' : 'ruby'
        \ }
  NeoBundle 'Shougo/vinarise.vim', {
        \ 'on_cmd' : 'Vinarise'
        \ }
  NeoBundle 'tpope/vim-bundler', {
        \ 'on_cmd' : ['Bundle', 'BOpen']
        \ }
  NeoBundle 'kana/vim-smartchr', {
        \ 'on_i' : 1
        \ }
  NeoBundle 'thinca/vim-ref', {
        \ 'on_map' : '<Plug>'
        \ }
  NeoBundle 'yuku-t/vim-ref-ri', {
        \ 'on_ft' : 'ruby'
        \ }
  NeoBundle 'moro/vim-review'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'osyo-manga/vim-monster', {
        \ 'on_ft' : 'ruby'
        \ }
  NeoBundle 'kana/vim-tabpagecd', {
        \ 'depends' : 'unite.vim'
        \ }
  NeoBundle 'todesking/ruby_hl_lvar.vim', {
        \ 'on_ft' : 'ruby'
        \ }
  NeoBundle 'chikatoike/concealedyank.vim', {
        \ 'on_map' : '<Plug>(operator-concealedyank)'
        \ }
  NeoBundle 'thoughtbot/vim-rspec', {
        \ 'on_ft' : 'ruby'
        \ }
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'vim-scripts/grep.vim'
  NeoBundle 'easymotion/vim-easymotion', {
        \ 'on_map' : '<Plug>'
        \ }
  NeoBundle 'kana/vim-niceblock', {
        \ 'on_map' : '<Plug>'
        \ }

  call neobundle#end()

  filetype plugin indent on

  NeoBundleCheck
endif
