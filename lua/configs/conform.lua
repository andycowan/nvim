local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt", "goimports" },
    php = { "pint" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    blade = { "blade-formatter" },
    python = { "ruff_format"},
  },

  formatters = {
    pint = {
      command = "pint",
      args = { "--preset", "psr12", "$FILENAME" },
      stdin = false
    },
    prettier = {
      prepend_args = {
          "--config", vim.fn.expand("~/.config/prettier/.prettierrc")
      },
    },
  },

  format_after_save = {
     lsp_fallback = true,
  },
}

return options
