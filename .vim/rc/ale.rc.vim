let g:ale_sign_column_always = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_statusline_format = ['ALE ± %d', 'ALE ✭ %d', 'ALE ♥']
