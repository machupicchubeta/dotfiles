" Display diff with the file.
command! -nargs=1 -complete=file Diff vertical diffsplit <args>
" Disable diff mode.
command! -nargs=0 Undiff setlocal nodiff noscrollbind wrapscan
