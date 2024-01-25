return {
  {
    'folke/which-key.nvim',
    lazy = true,
    cond = (not vim.g.vscode),
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {},
    event = 'VeryLazy'
  }
}
