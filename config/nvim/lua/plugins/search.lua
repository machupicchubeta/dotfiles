return {
  {
    'nvim-telescope/telescope.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-t>tt', '<cmd>Telescope tags<cr>')
    end,
    config = function()
      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
            },
          },
        },
        pickers = {
          tags = {
            theme = "dropdown",
            layout_config = { width = 0.6, height = 0.6 },
            previewer = false
          },
        },
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
      require('telescope').load_extension('lazy')
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('ag')
      require('telescope').load_extension('dir')
      require('telescope').load_extension('dap')
      require('telescope').load_extension('git_grep')
    end,
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-t>e', '<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>')
    end,
    cmd = 'Telescope file_browser',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  {
    'tsakirist/telescope-lazy.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    cmd = 'Telescope lazy'
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    build = 'make',
    event = 'VeryLazy'
  },
  {
    'kelly-lin/telescope-ag',
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      local telescope_ag = require('telescope-ag')
      telescope_ag.setup({
        cmd = telescope_ag.cmds.ag
      })
    end,
    cmd = 'Ag'
  },
  {
    'princejoogie/dir-telescope.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-t>dg', '<cmd>Telescope dir live_grep<CR>', { silent = true })
      vim.keymap.set('n', '<C-t>df', '<cmd>Telescope dir find_files<CR>', { silent = true })
    end,
    cmd = 'Telescope dir'
  },
  {
    'nvim-telescope/telescope-dap.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    cmd = 'Telescope dap'
  },
  {
    'davvid/telescope-git-grep.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    init = function()
      vim.keymap.set({ 'n', 'v' }, '<C-t>GG', function() require('git_grep').grep() end)
      vim.keymap.set('n', '<C-t>gg', function() require('git_grep').live_grep() end)
    end,
    cmd = 'Telescope git_grep'
  }
}
