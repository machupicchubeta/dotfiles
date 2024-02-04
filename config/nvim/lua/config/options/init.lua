vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.modeline = true
vim.opt.clipboard:append({ 'unnamedplus' })
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.fixeol = false
vim.opt.showmatch = true
vim.opt.matchtime = 1
vim.opt.matchpairs:append('<:>')
vim.opt.grepprg = 'grep --ignore-case --line-number -H'
vim.opt.keywordprg = ':help'
vim.opt.backupcopy = 'yes'

vim.opt.number = true
vim.opt.cmdheight = 2
vim.opt.swapfile = false
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.gdefault = true
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.helplang:append({ 'en', 'ja' })

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.formatoptions = 'q'

vim.opt.termguicolors = true

vim.opt.tags = { './tags', vim.fn.stdpath('data') .. '/tags/tags' }
