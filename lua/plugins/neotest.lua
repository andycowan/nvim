return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-go",
      "olimorris/neotest-phpunit",
      "haydenmeade/neotest-jest",
      "Arthur944/neotest-bun",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-go" { recursive_run = true },
          require "neotest-phpunit" {
            phpunit_cmd = function()
              if vim.fn.filereadable "vendor/bin/phpunit" == 1 then
                return "vendor/bin/phpunit"
              end
              return "phpunit"
            end,
            filter_dirs = { "vendor", "node_modules" },
          },
          require "neotest-jest" {
            jestCommand = "npx jest",
          },
          require "neotest-bun",
        },
        status = {
          virtual_text = true,
          signs = true,
        },
        output = {
          open_on_run = true,
        },
      }
    end,
  },
}
