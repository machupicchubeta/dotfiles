vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.indentkeys = { '!^F', 'o', 'O', '0<Bar>', '0=where' }
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
vim.opt.cpoptions:remove({ 'm' })
vim.opt.matchtime = 1
vim.opt.matchpairs:append('<:>')
vim.opt.hidden = true
vim.opt.infercase = true
vim.opt.grepprg = 'grep --ignore-case --line-number -H'
vim.opt.isfname:remove({ '==' })
vim.opt.timeout = true
vim.opt.timeoutlen = 3000
vim.opt.ttimeoutlen = 100
vim.opt.updatetime = 1000
vim.opt.virtualedit = 'block'
vim.opt.keywordprg = ':help'
vim.opt.backupcopy = 'yes'
vim.opt.pastetoggle = '<C-E>'

vim.opt.number = true
vim.opt.list = true
vim.opt.listchars = { tab = '>-', trail = '-', extends = '>', nbsp = '_', precedes = '<' }
vim.opt.laststatus = 2
vim.opt.cmdheight = 2
vim.opt.showcmd = false
vim.opt.showtabline = 0
vim.opt.linebreak = false
vim.opt.showbreak = '\\'
vim.opt.breakat = ' ;:,!?\t'
vim.opt.whichwrap = 'b,s,h,l,<,>,~,[,]'
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.shortmess = 'aTIcF'
vim.opt.showmode = false
vim.opt.writebackup = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.visualbell = false
vim.opt.belloff = all
vim.opt.errorbells = false
vim.opt.wildmenu = false
vim.opt.wildmode = { 'list:longest', 'full' }
vim.opt.history = 1000
vim.opt.showfulltag = true
vim.opt.wildoptions = tagfile
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.complete = '.,w,b,u,t,i'
vim.opt.pumheight = 20
vim.opt.report = 0
vim.opt.startofline = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.winwidth = 30
vim.opt.winheight = 1
vim.opt.cmdwinheight = 5
vim.opt.equalalways = false
vim.opt.previewheight = 8
vim.opt.helpheight = 12
vim.opt.ttyfast = true
vim.opt.display = lastline
vim.opt.conceallevel = 2
vim.opt.concealcursor = ''
vim.opt.gdefault = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.mouse = 'a'
vim.opt.ruler = true
vim.opt.showmode = true
vim.opt.scrolloff = 3
vim.opt.helplang:append({ 'en', 'ja' })

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true

vim.opt.termguicolors = true

vim.opt.tags = { './tags', vim.fn.stdpath('data') .. '/tags/tags' }
