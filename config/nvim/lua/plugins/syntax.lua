return {
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require'nvim-treesitter.configs'.setup({
        indent = {
          enable = false
        }
      })
    end
  },
  {
    'm-demare/hlargs.nvim',
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'RRethy/vim-illuminate',
    lazy = true,
    config = function()
      require('illuminate').configure({
        providers = {
          'lsp',
          'treesitter',
          'regex'
        },
        delay = 100,
        filetype_overrides = {},
        filetypes_denylist = {
          'dirbuf',
          'dirvish',
          'fugitive',
        },
        filetypes_allowlist = {},
        modes_denylist = {},
        modes_allowlist = {},
        providers_regex_syntax_denylist = {},
        providers_regex_syntax_allowlist = {},
        under_cursor = true,
        large_file_cutoff = nil,
        large_file_overrides = nil,
        min_count_to_highlight = 1,
        should_enable = function(bufnr) return true end,
        case_insensitive_regex = false
      })
    end,
    event = 'VeryLazy'
  },
  {
    'norcalli/nvim-colorizer.lua',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = { '*' },
    event = 'VeryLazy'
  },
  {
    'folke/todo-comments.nvim',
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-t>z', '<cmd>TodoTelescope<CR>')
    end,
    config = function()
      require('todo-comments').setup()
    end,
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'mtdl9/vim-log-highlighting'
  },
  {
    'HiPhish/rainbow-delimiters.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      local rainbow_delimiters = require('rainbow-delimiters')
      require('rainbow-delimiters.setup').setup({
        strategy = {
          [''] = rainbow_delimiters.strategy['global'],
          vim = rainbow_delimiters.strategy['local']
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks'
        },
        highlight = {
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan'
        }
      })
    end,
    event = 'VeryLazy'
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      require('ibl').setup({})
    end,
    event = 'VeryLazy'
  },
  {
    'echasnovski/mini.indentscope',
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'ntpeters/vim-better-whitespace',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.g.better_whitespace_ctermcolor = 'DarkGrey'
      vim.g.better_whitespace_guicolor = 'DarkGrey'
      vim.g.better_whitespace_operator = '_s'
    end,
    event = 'VeryLazy'
  },
  {
    'andersevenrud/nvim_context_vt',
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  }
}
