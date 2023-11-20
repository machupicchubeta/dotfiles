return {
  {
    'folke/which-key.nvim', -- NOTE: use it only when I need it?
    -- enabled = false,
    lazy = true,
    cond = (not vim.g.vscode),
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {},
    event = 'VeryLazy'
  },
  {
    'mrjones2014/legendary.nvim', -- NOTE: Hmm ....
    enabled = false,
    opts = {}
  }
}
