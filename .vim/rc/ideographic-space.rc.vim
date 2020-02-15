function! IdeographicSpace()
  highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
endfunction
augroup IdeographicSpace
  autocmd!
  autocmd ColorScheme * call IdeographicSpace()
  autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('IdeographicSpace', '　')
augroup END
call IdeographicSpace()
