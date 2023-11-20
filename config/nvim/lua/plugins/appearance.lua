return {
  {
    'folke/tokyonight.nvim',
    cond = (not vim.g.vscode),
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup({ style = 'night', transparent = true })
      vim.cmd.colorscheme('tokyonight')
    end
  },
  {
    'catppuccin/nvim',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        flavour = 'mocha',
        integrations = {}
      })
      vim.cmd.colorscheme('catppuccin')
    end
  },
  {
    'bluz71/vim-nightfly-colors',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    name = 'nightfly',
    priority = 1000,
    config = function()
      require('nightfly').setup({})
      vim.cmd.colorscheme('nightfly')
    end
  },
  {
    'bluz71/vim-moonfly-colors',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    name = 'moonfly',
    priority = 1000,
    config = function()
      require('moonfly').setup({})
      vim.cmd.colorscheme('moonfly')
    end
  },
  {
    'ellisonleao/gruvbox.nvim',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    priority = 1000,
    config = function()
      require('gruvbox').setup({})
      vim.o.background = 'dark'
      vim.cmd.colorscheme('gruvbox')
    end
  },
  {
    'rmehri01/onenord.nvim',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    priority = 1000,
    config = function()
      require('onenord').setup({})
      vim.cmd.colorscheme('onenord')
    end
  },
  {
    'savq/melange-nvim',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    priority = 1000,
    config = function()
      require('melange').setup({})
      vim.cmd.colorscheme('melange')
    end
  },
  {
    'Shatur/neovim-ayu',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    priority = 1000,
    config = function()
      require('ayu').setup({})
      vim.cmd.colorscheme('ayu')
    end
  },
  {
    'marko-cerovac/material.nvim',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    priority = 1000,
    config = function()
      require('material').setup({})
      vim.g.material_style = 'deep ocean'
      -- vim.g.material_style = 'palenight'
      vim.cmd.colorscheme('material')
    end
  },
  {
    'wilmanbarrios/palenight.nvim',
    enabled = false,
    cond = (not vim.g.vscode),
    lazy = false,
    priority = 1000,
    config = function()
      require('palenight').set({})
      vim.cmd.colorscheme('palenight')
    end
  },
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'nvim-lualine/lualine.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {
      options = {
        theme = 'palenight',
        component_separators = '|',
        section_separators = { left = '', right = '' }
      },
      sections = {
        lualine_a = {
          { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'diff', 'diagnostics' },
        lualine_x = { 'fileformat', 'encoding', 'filetype' },
        lualine_y = { 'progress' },
      lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      }
    },
    event = 'VeryLazy',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'folke/noice.nvim', -- TODO: Hmm ....
    enabled = false,
    cond = (not vim.g.vscode),
    opts = {
      lsp = { hover = { enabled = false } },
      -- presets = {
      --   bottom_search = false,
      --   command_palette = true,
      --   long_message_to_split = true,
      --   inc_rename = false,
      --   lsp_doc_border = false
      -- }
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify'
    }
  },
  {
    'stevearc/dressing.nvim', -- NOTE: use it only when I need it?
    enabled = false,
    lazy = true,
    cond = (not vim.g.vscode),
    opts = {},
    event = 'VeryLazy',
  },
  {
    'SmiteshP/nvim-navic', -- TODO: Hmm .... in some cases, a first line is hidden unintensionally, this function is the .a.k.a. sticky header, in vscod
    enabled = false,
    lazy = true,
    cond = (not vim.g.vscode),
    opts = {
      lsp = {
        auto_attach = true
      }
    },
    event = 'VeryLazy',
    dependencies = {
      'neovim/nvim-lspconfig'
    }
  },
  {
    'akinsho/bufferline.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    version = '*',
    event = 'VeryLazy',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'goolord/alpha-nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      require('alpha').setup(
        require('alpha.themes.startify').config
      )
    end,
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'petertriho/nvim-scrollbar', -- NOTE: do you use it?
    enabled = false,
    lazy = true,
    cond = (not vim.g.vscode),
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      -- 'kevinhwang91/nvim-hlslens',
      -- 'lewis6991/gitsigns.nvim'
    }
  },
  {
    'mvllow/modes.nvim', -- NOTE: do you use it?
    enabled = false,
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
}
