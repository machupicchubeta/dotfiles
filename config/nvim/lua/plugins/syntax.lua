return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = true,
    config = function()
      require'nvim-treesitter.configs'.setup({
        -- ensure_installed = { 'ruby' }
        indent = {
          enable = false
        }
      })
    end,
    event = 'VeryLazy'
  },
  {
    'yioneko/nvim-yati', -- TODO: how do you feel about using it?
    enabled = false,
    lazy = true,
    config = function()
      require('nvim-treesitter.configs').setup({
        yati = {
          enable = true,
          disable = {},
          default_lazy = false,
          default_fallback = 'auto'
        }
      })
    end,
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter-context', -- TODO: Hmm .... in some cases, a first line is hidden unintensionally, this function is the .a.k.a. sticky header, in vscode
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    }
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
    'lukas-reineke/indent-blankline.nvim', -- TODO: what colors do you like?
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      require('ibl').setup({})
      --
      -- local highlight = {
      --   'RainbowRed',
      --   'RainbowYellow',
      --   'RainbowBlue',
      --   'RainbowOrange',
      --   'RainbowGreen',
      --   'RainbowViolet',
      --   'RainbowCyan'
      -- }
      -- local hooks = require('ibl.hooks')
      -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      --   vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
      --   vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
      --   vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
      --   vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
      --   vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
      --   vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
      --   vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
      -- end)
      --
      -- vim.g.rainbow_delimiters = { highlight = highlight }
      -- require('ibl').setup { scope = { highlight = highlight } }
      --
      -- hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
      --
      --   local highlight = {
      --     'RainbowRed',
      --     'RainbowYellow',
      --     'RainbowBlue',
      --     'RainbowOrange',
      --     'RainbowGreen',
      --     'RainbowViolet',
      --     'RainbowCyan'
      -- }
      --
      -- local hooks = require('ibl.hooks')
      -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      --     vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
      --     vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
      --     vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
      --     vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
      --     vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
      --     vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
      --     vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
      -- end)
      --
      -- require('ibl').setup { indent = { highlight = highlight } }
      --
      -- local highlight = {
      --   'CursorColumn',
      --   'Whitespace'
      -- }
      --
      -- require('ibl').setup({
      --   indent = { highlight = highlight, char = '' },
      --   whitespace = {
      --     highlight = highlight,
      --     remove_blankline_trail = false
      --   },
      --   scope = { enabled = false }
      -- })
    end,
    event = 'VeryLazy'
  },
  {
    'echasnovski/mini.indentscope',
    lazy = true,
    opts = {},
    version = '*',
    event = 'VeryLazy'
  },
  {
    'ntpeters/vim-better-whitespace',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.g.better_whitespace_ctermcolor = 'DarkGrey'
      vim.g.better_whitespace_guicolor = 'DarkGrey'
      -- vim.g.strip_whitespace_on_save = 1
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
