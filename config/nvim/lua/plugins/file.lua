return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-p>', '<cmd>Neotree reveal<CR>')
    end,
    opts = {},
    cmd = 'Neotree',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim'
    }
  },
  {
    'tpope/vim-eunuch'
  },
  {
    'jghauser/mkdir.nvim'
  },
  {
    'segeljakt/vim-silicon',
    lazy = true,
    cmd = 'Silicon'
  },
  {
    'stevearc/oil.nvim',
    opts = {}
  },
  {
    'tpope/vim-rails'
  }
}
