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
  },

  formatters = {
    pint = {
      command = "pint",
      args = { "--preset", "psr12", "$FILENAME" },
      stdin = false
    },
    prettier = {
      prepend_args = { "--tab-width", "4", "--print-width", "120"}
    },
  },

  format_on_save = {
     timeout_ms = 500,
     lsp_fallback = true,
  },
}

return options
