require "nvchad.autocmds"

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        -- Only open the tree if no file was specified
       if vim.fn.argc() == 0 then
           require("nvim-tree.api").tree.open()
       end
   end,
})

-- 2 spaces for JS/TS
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "vue",
      "css",
      "scss",
      "sass",
      "html"
  },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- 4 spaces for PHP, Go, Lua (your defaults already handle this, but explicit is fine)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "php", "blade", "go", "lua" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})
