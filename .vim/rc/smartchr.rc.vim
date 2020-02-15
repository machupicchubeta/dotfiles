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
