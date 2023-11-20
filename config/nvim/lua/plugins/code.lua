return {
  {
    'folke/neodev.nvim', -- TODO: opts?
    -- enabled = false,
    lazy = true,
    event = 'VeryLazy',
    opts = {}
    -- opts = {
    --   library = { plugins = { 'nvim-dap-ui' }, types = true }
    -- },
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
    'windwp/nvim-autopairs', -- TODO: it works intensional?
    lazy = true,
    opts = {},
    -- config = function()
    --   require('nvim-autopairs').setup({})
    --
    --   local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    --   local cmp = require('cmp')
    --   cmp.event:on(
    --     'confirm_done',
    --     cmp_autopairs.on_confirm_done()
    --   )
    -- end,
    event = 'VeryLazy'
  },
  {
    'windwp/nvim-ts-autotag',
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'monaqa/dial.nvim',
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-a>', function()
          require('dial.map').manipulate('increment', 'normal')
      end)
      vim.keymap.set('n', '<C-x>', function()
          require('dial.map').manipulate('decrement', 'normal')
      end)
      vim.keymap.set('n', 'g<C-a>', function()
          require('dial.map').manipulate('increment', 'gnormal')
      end)
      vim.keymap.set('n', 'g<C-x>', function()
          require('dial.map').manipulate('decrement', 'gnormal')
      end)
      vim.keymap.set('v', '<C-a>', function()
          require('dial.map').manipulate('increment', 'visual')
      end)
      vim.keymap.set('v', '<C-x>', function()
          require('dial.map').manipulate('decrement', 'visual')
      end)
      vim.keymap.set('v', 'g<C-a>', function()
          require('dial.map').manipulate('increment', 'gvisual')
      end)
      vim.keymap.set('v', 'g<C-x>', function()
          require('dial.map').manipulate('decrement', 'gvisual')
      end)
    end,
    config = function()
      local augend = require('dial.augend')
      require('dial.config').augends:register_group{
        default = {
          augend.integer.alias.decimal,
          augend.integer.alias.decimal_int,
          augend.integer.alias.hex,
          augend.integer.alias.octal,
          augend.integer.alias.binary,
          augend.date.alias['%Y/%m/%d'],
          augend.date.alias['%m/%d/%Y'],
          augend.date.alias['%d/%m/%Y'],
          augend.date.alias['%m/%d/%y'],
          augend.date.alias['%d/%m/%y'],
          augend.date.alias['%m/%d'],
          augend.date.alias['%-m/%-d'],
          augend.date.alias['%Y-%m-%d'],
          augend.date.alias['%d.%m.%Y'],
          augend.date.alias['%d.%m.%y'],
          augend.date.alias['%d.%m.'],
          augend.date.alias['%-d.%-m.'],
          augend.date.alias['%Y年%-m月%-d日'],
          augend.date.alias['%Y年%-m月%-d日(%ja)'],
          augend.date.alias['%H:%M:%S'],
          augend.date.alias['%H:%M'],
          augend.constant.alias.ja_weekday,
          augend.constant.alias.ja_weekday_full,
          augend.constant.alias.bool,
          augend.constant.alias.alpha,
          augend.constant.alias.Alpha,
          augend.semver.alias.semver,
          augend.constant.new{ elements = { 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' }, word = true, cyclic = true },
          augend.constant.new{ elements = { 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' }, word = true, cyclic = true },
          augend.constant.new{ elements = { 'and', 'or' }, word = true, cyclic = true },
          augend.constant.new{ elements = { '&&', '||' }, word = false, cyclic = true },
          augend.constant.new{ elements = { 'valid', 'invalid' }, word = true, cyclic = true },
          augend.hexcolor.new{ case = 'lower' }
        }
      }
    end,
    event = 'VeryLazy'
  },
  {
    'numToStr/Comment.nvim',
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'kylechui/nvim-surround',
    lazy = true,
    opts = {},
    version = 'v2.1.3',
    event = 'VeryLazy'
  },
  {
    'michaeljsmith/vim-indent-object', -- TODO: do you use this?
    enabled = false
  },
  {
    'mopp/vim-operator-convert-case', -- FIXME: load failed using lazy.vim, why?
    enabled = false,
    init = function()
      vim.keymap.set('n', '<Leader>cc', '<Plug>(operator-convert-case-lower-camel)')
      vim.keymap.set('n', '<Leader>uc', '<Plug>(operator-convert-case-upper-camel)')
      vim.keymap.set('n', '<Leader>sc', '<Plug>(operator-convert-case-lower-snake)')
      vim.keymap.set('n', '<Leader>us', '<Plug>(operator-convert-case-upper-snake)')
      vim.keymap.set('n', '<Leader>tc', '<Plug>(operator-convert-case-toggle-upper-lower)')
      vim.keymap.set('n', '<Leader>nc', '<Plug>(convert-case-loop)')
    end
  },
  {
    'deris/vim-rengbang', -- TODO: do you use this?
    enabled = false,
    lazy = true,
    init = function()
      vim.keymap.set({ 'n', 'v', 'o' }, '<Leader>sr', '<Plug>(operator-rengbang)')
      vim.keymap.set({ 'n', 'v', 'o' }, '<Leader>sp', '<Plug>(operator-rengbang-useprev)')
    end,
    event = 'VeryLazy'
  },
  {
    'lambdalisue/reword.vim'
  },
  {
    'AndrewRadev/linediff.vim'
  },
  {
    'sQVe/sort.nvim', -- TODO: keymap?
    lazy = true,
    -- init = function()
      -- vim.keymap.set('n', 'go', '<cmd>Sort<CR>', { silent = true })
      -- vim.keymap.set('v', 'go', '<Esc><cmd>Sort<CR>', { silent = true })
    -- end
    opts = {},
    event = 'VeryLazy'
  },
  {
    's1n7ax/nvim-comment-frame', -- NOTE: use it only when I need it?
    enabled = false,
    lazy = true,
    init = function()
      vim.keymap.set('n', '<C-c>c', function() require('nvim-comment-frame').add_comment() end)
      vim.keymap.set('n', '<C-c>C', function() require('nvim-comment-frame').add_multiline_comment() end)
    end,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'LudoPinelli/comment-box.nvim', -- NOTE: use it only when I need it?
    enabled = false,
    lazy = true,
    init = function()
      vim.keymap.set({ 'n', 'v' }, '<C-c>b', require('comment-box').lbox, {})
      vim.keymap.set({ 'n', 'v' }, '<C-c>B', require('comment-box').ccbox, {})
      vim.keymap.set({ 'n', 'v' }, '<C-c>l', require('comment-box').cline, {})
      vim.keymap.set('i', '<C-c>', require('comment-box').cline, {})
    end,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'danymat/neogen', -- NOTE: use it only when I need it?
    enabled = false,
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'gpanders/editorconfig.nvim'
  },
  {
    'bennypowers/nvim-regexplainer', -- TODO: do you use this?
    enabled = false,
    lazy = true,
    opts = {},
    event = 'VeryLazy',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter',
      -- 'MunifTanjim/nui.nvim'
    }
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
  }
}
