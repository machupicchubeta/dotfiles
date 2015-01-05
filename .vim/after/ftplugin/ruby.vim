if &filetype != "ruby"
  finish
endif

compiler ruby
augroup rbsyntaxcheck
  autocmd! BufWritePost <buffer> silent make! -c "%" | redraw!
augroup END
