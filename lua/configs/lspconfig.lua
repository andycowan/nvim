require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "gopls",
  "lua_ls",
  "intelephense",
  "tailwindcss",
  "ts_ls"
}
vim.lsp.enable(servers)

-- gopls config
vim.lsp.config.gopls = {
  cmd = { "gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl"},
  root_markers = { "go.work", "go.mod", ".git" },
  settings = {
    gopls = {
	    analyses = {
	      unusedparams = true,
	    },
	    staticcheck = true,
	    gofupmt = true,
	  },
  },
}

-- lua config
vim.lsp.config.lua_ls  = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", "stylua.toml", ".stylua.toml", "selene.toml", "selene.yml", ".git" },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }, -- Recognize 'vim' global
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
          vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

-- tailwindcss config
vim.lsp.config.tailwindcss = {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "blade"
  },
  root_markers = { "tailwind.config.js", "tailwind.config.ts", "postcss.config.js", "postcss.config.ts", ".git" },
}
