return {
  {
    'nvim-telescope/telescope.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    -- init = function()
    --   local builtin = require('telescope.builtin')
    --   vim.keymap.set('n', '<C-t>f', builtin.find_files)
    --   vim.keymap.set('n', '<C-t>g', builtin.live_grep)
    --   vim.keymap.set('n', '<C-t>b', builtin.buffers)
    --   vim.keymap.set('n', '<C-t>h', builtin.help_tags)
    -- end,
    config = function()
      require('telescope').setup({
        extensions = {
          file_browser = {
            hijack_netrw = true
          },
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case'
          }
        }
      })
      require('telescope').load_extension('file_browser')
      require('telescope').load_extension('frecency')
      require('telescope').load_extension('lazy')
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('ag')
      require('telescope').load_extension('dir')
      require('telescope').load_extension('dap')
      require('telescope').load_extension('git_grep')
    end,
    tag = '0.1.4',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- 'nvim-treesitter/nvim-treesitter',
      -- 'nvim-tree/nvim-web-devicons'
      -- 'tsakirist/telescope-lazy.nvim',
    }
  },
  {
    'nvim-telescope/telescope-file-browser.nvim', -- TODO: do you use this?
    -- enabled = false,
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-t>e', '<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>')
    end,
    cmd = 'Telescope file_browser',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
      -- 'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'nvim-telescope/telescope-frecency.nvim', -- TODO: do you use this?
    -- enabled = false,
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-t>q', '<cmd>Telescope frecency<CR>')
    end,
    cmd = 'Telescope frecency',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim',
      -- 'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'tsakirist/telescope-lazy.nvim', -- TODO: do you use this?
    -- enabled = false,
    cond = (not vim.g.vscode),
    lazy = true,
    cmd = 'Telescope lazy',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim',
      -- 'folke/lazy.nvim',
      -- 'nvim-telescope/telescope-file-browser.nvim'
    }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- enabled =false,
    cond = (not vim.g.vscode),
    lazy = true,
    build = 'make',
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim'
    }
  },
  {
    'kelly-lin/telescope-ag',
    -- enabled = false,
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      local telescope_ag = require('telescope-ag')
      telescope_ag.setup({
        cmd = telescope_ag.cmds.ag
      })
    end,
    cmd = 'Ag',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim'
    }
  },
  {
    'princejoogie/dir-telescope.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-t>dg', '<cmd>Telescope dir live_grep<CR>', { silent = true })
      vim.keymap.set('n', '<C-t>df', '<cmd>Telescope dir find_files<CR>', { silent = true })
    end,
    cmd = 'Telescope dir',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim'
    }
  },
  {
    'nvim-telescope/telescope-dap.nvim', -- TODO: do you use it?
    -- enabled = false,
    cond = (not vim.g.vscode),
    lazy = true,
    cond = (not vim.g.vscode),
    cmd = 'Telescope dap',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim',
      -- 'mfussenegger/nvim-dap',
      -- 'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'davvid/telescope-git-grep.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set({ 'n', 'v' }, '<C-t>GG', function() require('git_grep').grep() end)
      vim.keymap.set('n', '<C-t>gg', function() require('git_grep').live_grep() end)
    end,
    cmd = 'Telescope git_grep',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim',
      -- 'mfussenegger/nvim-dap',
      -- 'nvim-treesitter/nvim-treesitter'
    }
  }
}
