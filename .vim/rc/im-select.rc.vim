function! MakeInputSourceToEnglish() abort
  if trim(system("uname -m")) == "arm64"
    let s:im_select_path = '/opt/homebrew/bin/im-select'
  else
    let s:im_select_path = '/usr/local/bin/im-select'
  endif

  if executable(s:im_select_path)
    execute 'silent !' . s:im_select_path . ' com.apple.keylayout.ABC'
  endif
endfunction

augroup im_select
  autocmd!
  autocmd BufNew,BufEnter,InsertLeave * call MakeInputSourceToEnglish()
  autocmd BufNew,BufEnter * startinsert
augroup END
