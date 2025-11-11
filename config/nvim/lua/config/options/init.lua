vim.opt.autoindent = true
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.backupcopy = 'yes'
vim.opt.clipboard:append({ 'unnamedplus' })
vim.opt.cmdheight = 2
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fixeol = false
vim.opt.formatoptions = 'l'
vim.opt.gdefault = true
vim.opt.grepprg = 'grep --ignore-case --line-number -H'
vim.opt.helplang:append({ 'en', 'ja' })
vim.opt.ignorecase = true
vim.opt.keywordprg = ':help'
vim.opt.list = true
vim.opt.listchars = 'tab:->'
vim.opt.matchpairs:append('<:>')
vim.opt.matchtime = 1
vim.opt.modeline = true
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.tags = { './tags', vim.fn.stdpath('data') .. '/tags/tags' }
vim.opt.termguicolors = true
