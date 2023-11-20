return {
  {
    'folke/trouble.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'kana/vim-submode',
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      vim.fn['submode#enter_with']('bufmove', 'n', '', 's>', '<C-w>>')
      vim.fn['submode#enter_with']('bufmove', 'n', '', 's<', '<C-w><')
      vim.fn['submode#enter_with']('bufmove', 'n', '', 's+', '<C-w>+')
      vim.fn['submode#enter_with']('bufmove', 'n', '', 's-', '<C-w>-')
      vim.fn['submode#map']('bufmove', 'n', '', '>', '<C-w>>')
      vim.fn['submode#map']('bufmove', 'n', '', '<', '<C-w><')
      vim.fn['submode#map']('bufmove', 'n', '', '+', '<C-w>+')
      vim.fn['submode#map']('bufmove', 'n', '', '-', '<C-w>-')
    end,
    event = 'VeryLazy'
  },
  {
    'sindrets/diffview.nvim',
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    lazy = true,
    cond = (not vim.g.vscode),
    opts = {},
    event = 'VeryLazy'
  },
  {
    'NeogitOrg/neogit', -- NOTE: use it only when I need it?
    -- enabled = false,
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- 'nvim-telescope/telescope.nvim',
      -- 'sindrets/diffview.nvim'
    }
  },
  {
    'akinsho/git-conflict.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    version = 'v1.2.2',
    event = 'VeryLazy'
  },
  {
    'hotwatermorning/auto-git-diff',
    lazy = true,
    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'gitrebase',
        callback = function()
          vim.keymap.set('n', '<buffer><C-l>', '<Plug>(auto_git_diff_scroll_manual_update)')
          vim.keymap.set('n', '<buffer><C-n>', '<Plug>(auto_git_diff_scroll_down_half)')
          vim.keymap.set('n', '<buffer><C-p>', '<Plug>(auto_git_diff_scroll_up_half)')
        end
      })
    end,
    event = 'VeryLazy'
  },
  {
    'chentoast/marks.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {
      builtin_marks = { '.', '<', '>', '^' }
    },
    event = 'VeryLazy'
  },
  {
    'akinsho/toggleterm.nvim', -- NOTE: use it only when I need it?
    enabled = false,
    lazy = true,
    cond = (not vim.g.vscode),
    opts = {},
    tag = 'v2.8.0',
    event = 'VeryLazy'
  },
  {
    'kevinhwang91/nvim-bqf', -- NOTE: do you use this?
    enabled = false,
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'kwkarlwang/bufresize.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  }
}
