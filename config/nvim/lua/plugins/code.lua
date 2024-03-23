return {
  {
    'folke/neodev.nvim',
    lazy = true,
    event = 'VeryLazy',
    opts = {}
  },
  {
    'RRethy/nvim-treesitter-endwise',
    lazy = true,
    config = function()
      require('nvim-treesitter.configs').setup({
        endwise = {
          enable = true
        }
      })
    end,
    event = 'VeryLazy'
  },
  {
    'windwp/nvim-autopairs',
    lazy = true,
    config = function()
      require('nvim-autopairs').setup({})

      local rule = require('nvim-autopairs.rule')
      local npairs = require('nvim-autopairs')
      local cond = require('nvim-autopairs.conds')
      npairs.add_rules({
        rule('`', '`')
          :with_move(cond.none())
          :replace_map_cr(function() return '<C-g>u<CR><C-c>O' end)
      })
    end,
    event = 'VeryLazy'
  },
  {
    'windwp/nvim-ts-autotag',
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'numToStr/Comment.nvim',
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'kylechui/nvim-surround',
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'lambdalisue/reword.vim'
  },
  {
    'AndrewRadev/linediff.vim'
  },
  {
    'gpanders/editorconfig.nvim'
  },
  {
    'jsborjesson/vim-uppercase-sql',
    lazy = true,
    ft = 'sql'
  },
  {
    'varnishcache-friends/vim-varnish',
    lazy = true,
    ft = 'vcl'
  },
  {
    'evanleck/vim-svelte',
    lazy = true,
    ft = 'svelte'
  },
  {
    'joukevandermaas/vim-ember-hbs',
    lazy = true,
    ft = 'html.handlebars'
  },
  {
    'gabrielpoca/replacer.nvim',
    opts = {},
    keys = {
      {
        '<C-t>r',
        function() require('replacer').run() end,
        desc = "run replacer.nvim"
      }
    }
  }
}
