return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-p>', '<cmd>Neotree reveal<CR>')
    end,
    opts = {},
    branch = 'v3.x',
    cmd = 'Neotree',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- 'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    }
  },
  {
    'wsdjeg/vim-fetch',
    tag = 'v3.0.0',
    dependencies = {
      -- 'nvim-lua/plenary.nvim',
      -- 'nvim-tree/nvim-web-devicons',
      -- 'MunifTanjim/nui.nvim'
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
  }
}
