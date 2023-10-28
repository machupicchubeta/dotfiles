" Anywhere SID.
function! s:SID_PREFIX() abort
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Enable line numbers
set number

" Show “invisible” characters
set list
set listchars=tab:>-,trail:-,extends:>,nbsp:_,precedes:<

" Always show status line
set laststatus=2

" Height of command line.
set cmdheight=2

" Not show command on statusline.
set noshowcmd

" Show the filename in the window titlebar
set title

" Title length.
set titlelen=95

" Title string.
let &g:titlestring="
      \ %{expand('%:p:~:.')}%(%m%r%w%)
      \ %<\(%{".s:SID_PREFIX()."strwidthpart(
      \ fnamemodify(&filetype ==# 'vimfiler' ?
      \ substitute(b:vimfiler.current_dir, '.\\zs/$', '', '') : getcwd(), ':~'),
      \ &columns-len(expand('%:p:.:~')))}\) - VIM"

" Disable tabline.
set showtabline=0

" Set statusline.
let &g:statusline="%{winnr('$')>1?'['.winnr().'/'.winnr('$')"
      \ . ".(winnr('#')==winnr()?'#':'').']':''}\ "
      \ . "%{(&previewwindow?'[preview] ':'').expand('%:t')}"
      \ . "\ %=%{(winnr('$')==1 || winnr('#')!=winnr()) ?
      \ '['.(&filetype!=''?&filetype.',':'')"
      \ . ".(&fenc!=''?&fenc:&enc).','.&ff.']' : ''}"
      \ . "%m%{printf('%'.(len(line('$'))+2).'d/%d',line('.'),line('$'))}"

" Turn down a long line appointed in 'breakat'
set linebreak
set showbreak=\
set breakat=\ \	;:,!?

" Wrap conditions.
set whichwrap+=h,l,<,>,[,],b,s,~
" set whichwrap=b,,[,,,~
if exists('+breakindent')
   set breakindent
   set wrap
else
   set nowrap
endif

" Don’t show the intro message when starting vim
set shortmess=aTI
" set shortmess=atI

" Do not display the completion messages
set noshowmode
if has('patch-7.4.314')
  set shortmess+=c
else
  autocmd MyAutoCmd VimEnter *
        \ highlight ModeMsg guifg=bg guibg=bg |
        \ highlight Question guifg=bg guibg=bg
endif

" Do not display the edit messages
if has('patch-7.4.1570')
  set shortmess+=F
endif

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
" set backupdir-=.
set backupdir=~/.vim/backups

" Disable bell.
set t_vb=
set novisualbell
set belloff=all

" Disable error bells
set noerrorbells

" Display candidate supplement.
set nowildmenu
set wildmode=list:longest,full

" Enable menu completion
" set wildmenu wildmode=list:full

" Increase history amount.
set history=1000
" Display all the information of the tag by the supplement of the Insert mode.
set showfulltag
" Can supplement a tag in a command-line.
set wildoptions=tagfile

" Disable menu
let g:did_install_default_menus = 1

" Completion setting.
set completeopt=menuone
if has('patch-7.4.775')
  set completeopt+=noinsert
endif

" Don't complete from other buffer.
set complete=.
"set complete=.,w,b,i,t
"
" Set popup menu max height.
set pumheight=20

" Report changes.
set report=0

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Splitting a window will put the new window below the current one.
set splitbelow

" Splitting a window will put the new window right the current one.
set splitright

" Set minimal width for current window.
set winwidth=30

" Set minimal height for current window.
" set winheight=20
set winheight=1

" Set maximam maximam command line window.
set cmdwinheight=5

" No equal window size.
set noequalalways

" Adjust window size of preview and help.
set previewheight=8
set helpheight=12

" Optimize for fast terminal connections
set ttyfast

" When a line is long, do not omit it in @.
set display=lastline
" Display an invisible letter with hex format.
"set display+=uhex

function! s:strwidthpart(str, width) abort "{{{
  if a:width <= 0
    return ''
  endif
  let ret = a:str
  let width = s:wcswidth(a:str)
  while width > a:width
    let char = matchstr(ret, '.$')
    let ret = ret[: -1 - len(char)]
    let width -= s:wcswidth(char)
  endwhile

  return ret
endfunction"}}}

if v:version >= 703
  " For conceal.
   set conceallevel=2 concealcursor=niv

   " set colorcolumn=79

  " Use builtin function.
  function! s:wcswidth(str) abort
    return strwidth(a:str)
  endfunction
else
  function! s:wcswidth(str) abort
    return len(a:str)
  endfunction
endif

" Add the g flag to search/replace by default
set gdefault

" Highlight current line
set cursorline
set cursorcolumn

" Enable mouse in all modes
set mouse=a

" Show the cursor position
set ruler

" Show the current mode
set showmode

" Use relative line numbers
" if exists("&relativenumber")
"  set relativenumber
"  au BufReadPost * set relativenumber
" endif

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Use English help file
set helplang& helplang=en,ja

" Default home directory
let t:cwd = getcwd()
