return {
  {
    'kevinhwang91/nvim-hlslens',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'Wansmer/treesj', -- TODO: do you use this?
    -- enabled = false,
    lazy = true,
    init = function()
      vim.keymap.set('n', '<leader>m', require('treesj').toggle)
      vim.keymap.set('n', '<leader>j', require('treesj').join)
      vim.keymap.set('n', '<leader>s', require('treesj').split)
    end,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter'
    }
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
    'weizheheng/ror.nvim',
    enabled = false, -- XXX: Hmm ....
    lazy = true,
    init = function()
      vim.keymap.set('n', '<Leader>rc', function()
          require('ror.commands').list_commands()
        end,
        { silent = true }
      )
    end,
    opts = {},
    ft = { 'ruby', 'eruby' },
    dependencies = {
      -- 'nvim-telescope/telescope.nvim',
      -- 'rcarriga/nvim-notify',
      -- 'stevearc/dressing.nvim'
    }
  },
  {
    'tpope/vim-repeat', -- FIXME: does not work, why?
    enabled = false
  },
  {
    'gbprod/yanky.nvim', -- TODO: do you use this?
    enabled = false,
    lazy = true,
    init = function()
      -- vim.keymap.set({ 'n', 'x' }, 'p', '<Plug>(YankyPutAfter)')
      -- vim.keymap.set({ 'n', 'x' }, 'P', '<Plug>(YankyPutBefore)')
      -- vim.keymap.set({ 'n', 'x' }, 'gp', '<Plug>(YankyGPutAfter)')
      -- vim.keymap.set({ 'n', 'x' }, 'gP', '<Plug>(YankyGPutBefore)')
      -- vim.keymap.set('n', '<M-n>', '<Plug>(YankyCycleForward)')
      -- vim.keymap.set('n', '<M-p>', '<Plug>(YankyCycleBackward)')
    end,
    event = 'VeryLazy'
  },
  {
    'AckslD/nvim-neoclip.lua', -- TODO: do you use this?
    enabled = false,
    lazy = true,
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim'
    }
  },
  {
    'echasnovski/mini.align', -- TODO: how to use?
    enabled = false, -- XXX: Hmm ....
    lazy = true,
    opts = {},
    tag = 'v0.11.0',
    event = 'VeryLazy'
  },
  {
    'RRethy/nvim-align', -- TODO: do you use this?
    enabled = false,
    lazy = true,
    event = 'VeryLazy'
  },
  {
    "junegunn/vim-easy-align"
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
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects', -- NOTE: Hmm ....
    enabled = false,
    lazy = true,
    config = function()
      require'nvim-treesitter.configs'.setup({
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = { query = '@class.inner', desc = 'Select inner part of a class region' },
              ['as'] = { query = '@scope', query_group = 'locals', desc = 'Select language scope' }
            },
            selection_modes = {
              ['@parameter.outer'] = 'v',
              ['@function.outer'] = 'V',
              ['@class.outer'] = '<c-v>'
            },
            include_surrounding_whitespace = true
          },
          swap = {
            enable = true,
            swap_next = {
              ['<leader>a'] = '@parameter.inner'
            },
            swap_previous = {
              ['<leader>A'] = '@parameter.inner'
            }
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              [']m'] = '@function.outer',
              [']]'] = { query = '@class.outer', desc = 'Next class start' },
              [']o'] = '@loop.*',
              [']s'] = { query = '@scope', query_group = 'locals', desc = 'Next scope' },
              [']z'] = { query = '@fold', query_group = 'folds', desc = 'Next fold' }
            },
            goto_next_end = {
              [']M'] = '@function.outer',
              [']['] = '@class.outer'
            },
            goto_previous_start = {
              ['[m'] = '@function.outer',
              ['[['] = '@class.outer'
            },
            goto_previous_end = {
              ['[M'] = '@function.outer',
              ['[]'] = '@class.outer'
            },
            goto_next = {
              [']d'] = '@conditional.outer'
            },
            goto_previous = {
              ['[d'] = '@conditional.outer'
            }
          },
          lsp_interop = {
            enable = true,
            border = 'none',
            floating_preview_opts = {},
            peek_definition_code = {
              ['<leader>df'] = '@function.outer',
              ['<leader>dF'] = '@class.outer'
            }
          }
        }
      })
      local ts_repeat_move = require('nvim-treesitter.textobjects.repeatable_move')
      vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move_next)
      vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_previous)
      vim.keymap.set({ 'n', 'x', 'o' }, 'f', ts_repeat_move.builtin_f)
      vim.keymap.set({ 'n', 'x', 'o' }, 'F', ts_repeat_move.builtin_F)
      vim.keymap.set({ 'n', 'x', 'o' }, 't', ts_repeat_move.builtin_t)
      vim.keymap.set({ 'n', 'x', 'o' }, 'T', ts_repeat_move.builtin_T)
    end,
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'phaazon/hop.nvim', -- TODO: how to use?
    enabled = false,
    lazy = true,
    init = function()
      local hop = require('hop')
      local directions = require('hop.hint').HintDirection
      vim.keymap.set('', 'f', function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
      end, { remap = true })
      vim.keymap.set('', 'F', function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
      end, { remap = true })
      vim.keymap.set('', 't', function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
      end, { remap = true })
      vim.keymap.set('', 'T', function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
      end, { remap = true })
    end,
    opts = {},
    tag = 'v2.0.3',
    event = 'VeryLazy'
  },
  {
    'ggandor/lightspeed.nvim', -- TODO: how to use?
    enabled = false,
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'mg979/vim-visual-multi', -- TODO: how to use?
    enabled = false,
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'gbprod/substitute.nvim', -- TODO: how to use?
    enabled = false,
    lazy = true,
    init = function()
      vim.keymap.set('n', 's', require('substitute').operator)
      vim.keymap.set('n', 'ss', require('substitute').line)
      vim.keymap.set('n', 'S', require('substitute').eol)
      vim.keymap.set('x', 's', require('substitute').visual)
    end,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'AckslD/nvim-anywise-reg.lua',
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'haya14busa/vim-asterisk', -- TODO: how to setup?
    enabled = false,
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'haya14busa/vim-metarepeat', -- TODO: how to setup?
    enabled = false,
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'stevearc/aerial.nvim', -- NOTE: do you use this?
    enabled = false,
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-z>z', '<cmd>AerialToggle!<CR>')
    end,
    opts = { on_attach = function(bufnr)
        vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
        vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
      end
    },
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter',
      -- 'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'tpope/vim-rails',
    lazy = true,
    ft = { 'ruby', 'eruby' }
  }
}
