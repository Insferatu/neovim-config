-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"

vim.opt.winbar = "%=%m %f"
vim.opt.relativenumber = false

vim.filetype.add({
  extension = {
    ['http'] = 'http',
  },
})
