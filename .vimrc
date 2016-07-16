" Make vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
": Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Enable each line feed code
" set fileformats = unix, dos, mac
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set nofixeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
" Enable delete characters by backspace always
set backspace=start,eol,indent
" Enable moving by cursor straddling each lines
set whichwrap=b,,[,,,~
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
set cursorcolumn
" Enable menu completion
set wildmenu wildmode=list:full
" Make tabs as wide as two spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
" Show “invisible” characters
set listchars=tab:>\ ,trail:-,nbsp:_,precedes:<
set list
" Highlight IdeographicSpace
function! IdeographicSpace()
  highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
endfunction
augroup IdeographicSpace
  autocmd!
  autocmd ColorScheme * call IdeographicSpace()
  autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('IdeographicSpace', '　')
augroup END
call IdeographicSpace()
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
if exists("&relativenumber")
" Use relative line numbers
 set relativenumber
 au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

set pastetoggle=<C-E>
set expandtab
set autoindent
set smartindent
set indentkeys=!^F,o,O,0<Bar>,0=where

" cancel highlights by twice press Esc
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
noremap <CR> o<ESC>

" NeoBundle
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim

  call neobundle#begin(expand('~/.vim/.bundle'))

  " Let NeoBundle manage NeoBundle
  NeoBundleFetch 'Shougo/neobundle.vim'

  " add plugins
  NeoBundle 'Shougo/echodoc.git'
  NeoBundle 'Shougo/unite.vim.git'
  NeoBundle 'Shougo/vim-vcs.git'
  NeoBundle 'Shougo/vimfiler.git'
  NeoBundle 'Shougo/vimshell.git'
  NeoBundle 'Shougo/vinarise.git'
  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'thinca/vim-quickrun'
  NeoBundle 'grep.vim'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'tpope/vim-bundler'
  NeoBundle 'ShowMarks'
  NeoBundle 'EasyMotion'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'kana/vim-smartchr'
  NeoBundle 'taku-o/vim-toggle'
  NeoBundle 'slim-template/vim-slim'
  NeoBundle 'kana/vim-submode'
  NeoBundle 'xolox/vim-easytags'
  NeoBundle 'xolox/vim-misc'
  NeoBundle 'thinca/vim-ref'
  NeoBundle 'yuku-t/vim-ref-ri'
  NeoBundle 'bronson/vim-trailing-whitespace'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'nathanaelkane/vim-indent-guides'
  NeoBundle 'vim-scripts/AnsiEsc.vim'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'junegunn/vim-easy-align'
  NeoBundle 'Raimondi/delimitMate'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'moro/vim-review'

  " colorschemes
  NeoBundle 'altercation/vim-colors-solarized'

  NeoBundle 'ujihisa/unite-colorscheme'

  NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
  \     'windows' : 'tools\\update-dll-mingw',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make',
  \     'linux' : 'make',
  \     'unix' : 'gmake',
  \    },
  \ }

  NeoBundle 'tpope/vim-rails', { 'autoload' : {
        \ 'filetypes' : ['haml', 'ruby', 'eruby'] }}

  NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
        \ 'autoload' : {
        \   'insert' : 1,
        \ }}

  NeoBundle 'edsono/vim-matchit', { 'autoload' : {
        \ 'filetypes': 'ruby',
        \ 'mappings' : ['nx', '%'] }}

  NeoBundleLazy 'basyura/unite-rails', {
        \ 'depends' : 'Shougo/unite.vim',
        \ 'autoload' : {
        \   'unite_sources' : [
        \     'rails/bundle', 'rails/bundled_gem', 'rails/config',
        \     'rails/controller', 'rails/db', 'rails/destroy', 'rails/features',
        \     'rails/gem', 'rails/gemfile', 'rails/generate', 'rails/git', 'rails/helper',
        \     'rails/heroku', 'rails/initializer', 'rails/javascript', 'rails/lib', 'rails/log',
        \     'rails/mailer', 'rails/model', 'rails/rake', 'rails/route', 'rails/schema', 'rails/spec',
        \     'rails/stylesheet', 'rails/view'
        \   ]
        \ }}

  NeoBundleLazy 'alpaca-tc/neorspec.vim', {
        \ 'depends' : ['alpaca-tc/vim-rails', 'tpope/vim-dispatch'],
        \ 'autoload' : {
        \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
        \ }}

  NeoBundleLazy 'tsukkee/unite-tag', {
        \ 'depends' : ['Shougo/unite.vim'],
        \ 'autoload' : {
        \   'unite_sources' : ['tag', 'tag/file', 'tag/include']
        \ }}

  NeoBundle 'thoughtbot/vim-rspec'
  NeoBundle 'vim-ruby/vim-ruby'
  " NeoBundle 'marcus/rsense'
  NeoBundle 'osyo-manga/vim-monster'

  if has('nvim')
    NeoBundle 'Shougo/deoplete.nvim'
    let g:deoplete#sources#omni#input_patterns = {
          \   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
          \}
  else
    NeoBundle 'Shougo/neocomplete.vim'
    " NeoBundle 'supermomonga/neocomplete-rsense.vim'
    let g:neocomplete#sources#omni#input_patterns = {
          \   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
          \}
   endif

  NeoBundleCheck

  call neobundle#end()
endif

" quickrun key-mapping
silent! nmap <unique> <Space>r <Plug>(quickrun)

filetype plugin on
filetype indent on

" vim-rspec {{{
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" }}}

" move between tabs key map
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" vim-submode
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" showmarks
let g:showmarks_include='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

" lightline {{{
let g:lightline = {
        \ 'colorscheme': 'solarized',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'modified': 'MyModified',
        \   'readonly': 'MyReadonly',
        \   'fugitive': 'MyFugitive',
        \   'filename': 'MyFilename',
        \   'fileformat': 'MyFileformat',
        \   'filetype': 'MyFiletype',
        \   'fileencoding': 'MyFileencoding',
        \   'mode': 'MyMode'
        \ }
        \ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
      return fugitive#head()
    endif
  catch
  endtry
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
" }}}

" smartchr {{{
" function! s:EnableSmartchrBasic()
"   inoremap <buffer><expr> + smartchr#one_of(' + ', '+', '++')
"   inoremap <buffer><expr> & smartchr#one_of(' & ', ' && ', '&')
"   inoremap <buffer><expr> , smartchr#one_of(', ', ',')
"   inoremap <buffer><expr> <Bar> smartchr#one_of('<Bar>', ' <Bar><Bar> ', '<Bar><Bar>')
"   inoremap <buffer><expr> = search('\(&\<bar><bar>\<bar>+\<bar>-\<bar>/\<bar>>\<bar><\) \%#', 'bcn')? '<bs>= ' : search('\(\*\<bar>!\)\%#')? '= ' : smartchr#one_of(' = ', ' == ', ' === ', '=')
" endfunction

function! s:EnableSmartchrRegExp()
  inoremap <buffer><expr> ~ search('\(!\<bar>=\) \%#', 'bcn')? '<bs>~ ' : '~'
endfunction

function! s:EnableSmartchrRubyHash()
  inoremap <buffer><expr> > smartchr#one_of('>', ' => ')
endfunction

function! s:EnableSmartchrHaml()
  call s:EnableSmartchrRubyHash()
  inoremap <buffer> [ []<Esc>i
  inoremap <buffer> { {}<Esc>i
endfunction

function! s:EnableSmartchrCoffeeFunction()
  inoremap <buffer><expr> > smartchr#one_of('>', ' ->')
endfunction

" autocmd FileType c,cpp,php,python,javascript,ruby,coffee,vim call s:EnableSmartchrBasic()
autocmd FileType python,ruby,coffee,vim call s:EnableSmartchrRegExp()
autocmd FileType ruby call s:EnableSmartchrRubyHash()
autocmd FileType haml call s:EnableSmartchrHaml()
autocmd FileType coffee call s:EnableSmartchrCoffeeFunction()
" }}}

" toggle.vim {{{
imap <silent><C-C> <Plug>ToggleI
nmap <silent><C-C> <Plug>ToggleN
vmap <silent><C-C> <Plug>ToggleV

let g:toggle_pairs = {
  \'and':'or',
  \'or':'and',
  \'if':'unless',
  \'unless':'if',
  \'elsif':'else',
  \'else':'elsif',
  \'it':'specify',
  \'specify':'it',
  \'describe':"context",
  \'context':"describe",
  \'true':'false',
  \'false':'true',
  \'yes':'no',
  \'no':'yes',
  \'on':'off',
  \'off':'on',
  \'public':'protected',
  \'protected':'private',
  \'private':'public',
  \'&&':'||',
  \'||':'&&'
\}
" }}}

" the silver searcher with Unite {{{
let g:unite_enable_start_insert = 1

let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
" }}}

" solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
"if &term =~ "xterm-256color" || "screen-256color"
"  set t_Co=256
"  set t_Sf=[3%dm
"  set t_Sb=[4%dm
"elseif &term =~ "xterm-color"
"  set t_Co=8
"  set t_Sf=[3%dm
"  set t_Sb=[4%dm
"endif

set clipboard+=unnamed

let g:rails_gem_projections = {
            \ "factory_girl": {
            \   "spec/factories/*.rb": {
            \     "command": "factory",
            \     "template": "FactoryGirl.define do\n  factory :%s do\n  end\nend",
            \     "alternate": "app/models/%s.rb",
            \     "related": "db/schema.rb#%p",
            \     "affinity": "model"
            \   }
            \ },
            \ "carrierwave": {
            \   "app/uploaders/*_uploader.rb": {
            \     "command": "uploader",
            \     "template": "module %SUploader < CarrierWave::Uploader::Base\nend",
            \     "affinity": "model",
            \     "test": "spec/uploaders/%s_uploader_spec.rb"
            \   }
            \ },
            \ "active_decorator": {
            \   "app/decorators/*_decorator.rb": {
            \     "command": "decorator",
            \     "template": "module %SDecorator\nend",
            \     "related": "app/models/%s.rb",
            \     "affinity": "model",
            \     "test": "spec/decorators/%s_decorator_spec.rb"
            \   }
            \ },
            \ "sidekiq": {
            \   "app/workers/*_worker.rb": {
            \     "command": "worker",
            \     "template": "class %SWorker\n  include Sidekiq::Worker\n\n  def perform()\n  end\nend",
            \     "related": "app/models/%s.rb",
            \     "affinity": "model",
            \     "test": "spec/decorators/%s_decorator_spec.rb"
            \   }
            \ }}

let g:rails_projections = {
            \ "app/batches/*.rb": {
            \   "command": "batch",
            \   "template": "class %S\nend",
            \   "test": "spec/batches/%s_spec.rb"
            \ },
            \ "app/controllers/concerns/*.rb": {
            \   "command": "controllerconcern",
            \   "template": "module %S\nend",
            \   "test": "spec/controllers/concerns/%s_spec.rb"
            \ },
            \ "app/models/concerns/*.rb": {
            \   "command": "modelconcern",
            \   "template": "module %S\nend",
            \   "test": "spec/models/concerns/%s_spec.rb"
            \ }}

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'tagbar', 'unite']

" vim-fugitive
autocmd QuickFixCmdPost *grep* cwindow
set statusline+=%{fugitive#statusline()}

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vim-monster
let g:monster#completion#rcodetools#backend = "async_rct_complete"

if !has('nvim')
  " Rsense
  " let g:neocomplete#sources#rsense#home_directory = '/usr/local/bin/rsense'

  " neocomplete.vim {{{
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 1
  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

  " Define dictionary.
  let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
          \ }

  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
      let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()
endif

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !has('nvim')
  " Enable heavy omni completion.
  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
  let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
  endif
  let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
  " }}}
endif

" easytags
let g:easytags_async = 1

" deoplete
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
endif
