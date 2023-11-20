return {
  {
    'nvim-lua/plenary.nvim',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'MunifTanjim/nui.nvim',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'ray-x/guihua.lua',
    cond = (not vim.g.vscode),
    lazy = true,
    build = 'cd lua/fzy && make',
    event = 'VeryLazy'
  }
}
