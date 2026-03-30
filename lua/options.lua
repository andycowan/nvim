require "nvchad.options"

local o = vim.o

o.relativenumber = true

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true

o.autoindent = true
o.smartindent = true

o.foldenable = true
o.foldlevel = 99
o.foldlevelstart = 99

vim.api.nvim_create_autocmd("BufWinLeave", {
  pattern = "*",
  callback = function()
    vim.cmd "silent! mkview"
  end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    vim.cmd "silent! loadview"
  end,
})
