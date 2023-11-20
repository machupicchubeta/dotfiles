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
    opts = {},
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
