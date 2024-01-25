return {
  {
    'L3MON4D3/LuaSnip',
    build = 'make install_jsregexp',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
    end
  },
  {
    'saadparwaiz1/cmp_luasnip',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/nvim-cmp',
    lazy = true,
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end
        },
        window = {},
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true })
        }),
        sources = cmp.config.sources({
          { name = 'luasnip' },
          { name = 'nvim_lsp' },
          { name = 'nvim_lsp_signature_help' },
          { name = 'nvim_lsp_document_symbol' },
          { name = 'buffer' },
          { name = 'path' },
          { name = 'omni' },
          { name = 'nvim_lua' },
          { name = 'spell' },
          { name = 'treesitter' },
          { name = 'cmdline' }
        }, {
          { name = 'buffer' }
        })
      })
    end,
    event = 'VeryLazy',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/cmp-nvim-lsp-signature-help',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/cmp-nvim-lsp-document-symbol',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/cmp-buffer',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/cmp-path',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/cmp-omni',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/cmp-nvim-lua',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'f3fora/cmp-spell',
    lazy = true,
    init = function()
      vim.opt.spell = true
      vim.opt.spelllang = { 'en_us' }
    end,
    event = 'VeryLazy'
  },
  {
    'ray-x/cmp-treesitter',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'hrsh7th/cmp-cmdline',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'onsails/lspkind.nvim',
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'github/copilot.vim',
    enabled = false,
    lazy = true,
    event = 'VeryLazy'
  }
}
