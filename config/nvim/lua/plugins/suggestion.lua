return {
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
          { name = 'nvim_lsp' },
          { name = 'nvim_lsp_signature_help' },
          { name = 'nvim_lsp_document_symbol' },
        })
      })
    end,
    event = 'VeryLazy'
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
