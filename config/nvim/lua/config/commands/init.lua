if vim.fn.executable('rg') == 1 then
  vim.o.grepprg    = 'rg --vimgrep --hidden'
  vim.o.grepformat = '%f:%l:%c:%m'
end

vim.api.nvim_create_autocmd('QuickFixCmdPost', {
  pattern = {'vim', 'grep', 'make'},

  callback = function()
    if #vim.fn.getqflist() > 1 then
      vim.cmd 'cwindow'
    end
  end
})
