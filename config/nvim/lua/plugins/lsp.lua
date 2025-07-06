return {
  {
    'neovim/nvim-lspconfig',
    cond = (not vim.g.vscode),
    lazy = true,
    config = function()
      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
      vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
          vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
          end, opts)
        end
      })
    end,
    event = 'VeryLazy'
  },
  {
    'williamboman/mason.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗'
        }
      }
    },
    event = 'VeryLazy'
  },
  {
    'williamboman/mason-lspconfig.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {
      ensure_installed = {
        'ansiblels',
        'bashls',
        'csharp_ls',
        'cssls',
        'denols',
        'dockerls',
        'docker_compose_language_service',
        'ember',
        'eslint',
        'glint',
        'gopls',
        'graphql',
        'html',
        'jdtls',
        'jsonls',
        'lemminx',
        'lua_ls',
        'marksman',
        'pylsp',
        'ruby_ls',
        'rust_analyzer',
        'sqlls',
        'svelte',
        'stimulus_ls',
        'taplo',
        'terraformls',
        'ts_ls',
        'vimls',
        'vuels',
        'yamlls',
      }
    },
    event = 'VeryLazy'
  },
  {
    'j-hui/fidget.nvim',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'mfussenegger/nvim-dap',
    cond = (not vim.g.vscode),
    lazy = true,
    event = 'VeryLazy'
  },
  {
    'rcarriga/nvim-dap-ui',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    cond = (not vim.g.vscode),
    lazy = true,
    opts = {},
    event = 'VeryLazy'
  }
}
