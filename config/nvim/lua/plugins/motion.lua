return {
  {
    'kevinhwang91/nvim-hlslens',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'Wansmer/treesj',
    lazy = true,
    init = function()
      vim.keymap.set('n', '<leader>m', require('treesj').toggle)
      vim.keymap.set('n', '<leader>j', require('treesj').join)
      vim.keymap.set('n', '<leader>s', require('treesj').split)
    end,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'andymass/vim-matchup',
    lazy = true,
    init = function()
      vim.g.matchup_matchparen_offscreen = { method = 'popup' }
    end,
    opts = {},
    event = 'VeryLazy'
  },
  {
    "junegunn/vim-easy-align",
    config = function()
      vim.cmd 'cabbrev ea EasyAlign'
    end
  },
  {
    'RRethy/nvim-treesitter-textsubjects',
    lazy = true,
    opts = {},
    config = function()
      require('nvim-treesitter.configs').setup({
        textsubjects = {
          enable = true,
          prev_selection = ',',
          keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            ['i;'] = 'textsubjects-container-inner'
          }
        }
      })
    end,
    event = 'VeryLazy'
  },
  {
    'gbprod/substitute.nvim',
    lazy = true,
    init = function()
      vim.keymap.set('n', 'C-ss', require('substitute').operator)
      vim.keymap.set('n', 'C-S-ss', require('substitute').line)
      vim.keymap.set('n', 'M-S-ss', require('substitute').eol)
      vim.keymap.set('x', 'C-ss', require('substitute').visual)
    end,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'stevearc/aerial.nvim',
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-z>z', '<cmd>AerialToggle!<CR>')
    end,
    opts = {
      on_attach = function(bufnr)
        vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
        vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
      end
    },
    event = 'VeryLazy'
  }
}
