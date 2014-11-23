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
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
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
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set listchars=tab:▸\ ,trail:·,nbsp:_,precedes:<
set list
augroup highlightIdeographicSpace
  autocmd!
  autocmd ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
  autocmd VimEnter,WinEnter *  match IdeographicSpace /　/
augroup END
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
"  Use relative line numbers
 set relativenumber
 au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

set pastetoggle=<C-E>
set expandtab
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
"set background=dark
set autoindent
set smartindent
" cancel highlights by twice press Esc
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>

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

"call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
"call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
"call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
"call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
"call submode#map('bufmove', 'n', '', '>', '<C-w>>')
"call submode#map('bufmove', 'n', '', '<', '<C-w><')
"call submode#map('bufmove', 'n', '', '+', '<C-w>+')
"call submode#map('bufmove', 'n', '', '-', '<C-w>-')

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
  "NeoBundle 'Shougo/clang_complete.git'
  NeoBundle 'Shougo/echodoc.git'
  NeoBundle 'Shougo/neocomplcache.git'
  NeoBundle 'Shougo/unite.vim.git'
  NeoBundle 'Shougo/vim-vcs.git'
  NeoBundle 'Shougo/vimfiler.git'
  NeoBundle 'Shougo/vimshell.git'
  NeoBundle 'Shougo/vinarise.git'
  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'Townk/vim-autoclose'
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

  " colorschemes
  NeoBundle 'altercation/vim-colors-solarized'
" NeoBundle 'w0ng/vim-hybrid'
" NeoBundle 'baskerville/bubblegum'
" NeoBundle 'vim-scripts/twilight'
"  NeoBundle 'croaker/mustang-vim'
"  NeoBundle 'nanotech/jellybeans.vim'
"  NeoBundle 'tomasr/molokai'
"  NeoBundle 'jeffreyiacono/vim-colors-wombat'
"  NeoBundle 'vim-scripts/Lucius'
"  NeoBundle 'vim-scripts/Zenburn'
"  NeoBundle 'mrkn/mrkn256.vim'
"  NeoBundle 'jpo/vim-railscasts-theme'
"  NeoBundle 'therubymug/vim-pyte'

  NeoBundle 'ujihisa/unite-colorscheme'

  NeoBundle 'Shougo/vimproc', {
        \ 'build' : {
        \     'mac' : 'make -f make_mac.mak',
        \     'unix' : 'make -f make_unix.mak',
        \    },
        \ }

  if has("lua")
    NeoBundleLazy 'Shougo/neocomplete', { 'autoload' : {
          \   'insert' : 1,
          \ }}
  endif

  NeoBundleLazy 'Shougo/neosnippet', {
        \ 'autoload' : {
        \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
        \   'filetypes' : 'snippet',
        \   'insert' : 1,
        \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
        \ }}

  NeoBundle 'Shougo/neosnippet-snippets'

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

  NeoBundleLazy 'alpaca-tc/alpaca_tags', {
        \ 'depends': 'Shougo/vimproc',
        \ 'autoload' : {
        \   'commands': ['TagsUpdate', 'TagsSet', 'TagsBundle']
        \ }}

  NeoBundleLazy 'tsukkee/unite-tag', {
        \ 'depends' : ['Shougo/unite.vim'],
        \ 'autoload' : {
        \   'unite_sources' : ['tag', 'tag/file', 'tag/include']
        \ }}

  NeoBundle 'scrooloose/syntastic'

  NeoBundleCheck

  call neobundle#end()
endif

" quickrun key-mapping
silent! nmap <unique> <Space>r <Plug>(quickrun)

filetype plugin on
filetype indent on

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
 
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
 
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:showmarks_include='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

let b:match_ignorecase = 1
let b:match_words = &matchpairs .'\<begin\>:\<end\>,(:),{:},[:],\<if\>:\<endif\>,\<augroup\>:\<augroup END\>'

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive',
            \ 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

" lightline
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

" smartchr {{{
function! s:EnableSmartchrBasic()
  inoremap <buffer><expr> + smartchr#one_of(' + ', '+', '++')
  inoremap <buffer><expr> & smartchr#one_of(' & ', ' && ', '&')
  inoremap <buffer><expr> , smartchr#one_of(', ', ',')
  inoremap <buffer><expr> <Bar> smartchr#one_of('<Bar>', ' <Bar><Bar> ', '<Bar><Bar>')
  inoremap <buffer><expr> = search('\(&\<bar><bar>\<bar>+\<bar>-\<bar>/\<bar>>\<bar><\) \%#', 'bcn')? '<bs>= ' : search('\(\*\<bar>!\)\%#')? '= ' : smartchr#one_of(' = ', ' == ', ' === ', '=')
endfunction

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

autocmd FileType c,cpp,php,python,javascript,ruby,coffee,vim call s:EnableSmartchrBasic()
autocmd FileType python,ruby,coffee,vim call s:EnableSmartchrRegExp()
autocmd FileType ruby call s:EnableSmartchrRubyHash()
autocmd FileType ruby,eruby setlocal tags+=~/rtags
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

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

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
" indent-guides.vim
"if 'dark' == &background
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray ctermbg=0
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236
"else
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray ctermbg=0
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=0
"endif 
" vim-hier
"highlight qf_error_ucurl gui=undercurl guisp=red ctermfg=none cterm=undercurl
"highlight qf_warning_ucurl gui=undercurl guisp=blue ctermfg=none cterm=undercurl

" Showmarks
"highlight ShowMarksHLl cterm=NONE ctermfg=blue ctermbg=black gui=NONE guifg=blue guibg=black
"highlight ShowMarksHLu cterm=NONE ctermfg=blue ctermbg=lightyellow gui=NONE guifg=blue guibg=black
"highlight ShowMarksHLo cterm=NONE ctermfg=blue ctermbg=black gui=NONE guifg=blue guibg=black
"highlight ShowMarksHLm cterm=bold ctermfg=blue ctermbg=black gui=NONE gui=bold guifg=blue guibg=black

"hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
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
            \   "command": "cconcern",
            \   "template": "module %S\nend",
            \   "test": "spec/controllers/concerns/%s_spec.rb"
            \ },
            \ "app/models/concerns/*.rb": {
            \   "command": "mconcern",
            \   "template": "module %S\nend",
            \   "test": "spec/models/concerns/%s_spec.rb"
            \ }}

