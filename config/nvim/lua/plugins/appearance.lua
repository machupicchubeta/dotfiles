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
    opts = {},
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
          {
            'mode',
            separator = {
              left = ''
            },
            right_padding = 2
          },
        },
        lualine_b = {
          {
            'filename',
            newfile_status = true,
            symbols = {
              modified = '✨ [Modified]',
              readonly = '🚫 [Readonly]',
              unnamed = '❓ [No Name]',
              newfile = '🔰 [New]'
            }
          },
          'branch',
          {
            'diff',
            symbols = {
              added = '🚧 ',
              modified = '✨ ',
              removed = '🗑 '
            }
          }
        },
        lualine_c = { 'diagnostics' },
        lualine_x = { 'fileformat', 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {
          {
            'filename',
            newfile_status = true,
            symbols = {
              modified = '✨ [Modified]',
              readonly = '🚫 [Readonly]',
              unnamed = '❓ [No Name]',
              newfile = '🔰 [New]'
            }
          },
          'branch',
          {
            'diff',
            symbols = {
              added = '🚧 ',
              modified = '✨ ',
              removed = '🗑 '
            }
          }
        },
        lualine_c = { 'diagnostics' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      }
    },
    event = 'VeryLazy'
  },
  {
    'akinsho/bufferline.nvim',
    cond = (not vim.g.vscode),
    opts = {}
  },
  {
    'goolord/alpha-nvim',
    cond = (not vim.g.vscode),
    config = function()
      require('alpha').setup(
        require('alpha.themes.startify').config
      )
    end
  }
}
