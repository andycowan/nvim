require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- Neotest - all under <leader>t
map("n", "<leader>tr", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })

map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run current file" })

map("n", "<leader>ta", function()
  require("neotest").run.run(vim.fn.getcwd())
end, { desc = "Run all tests" })

map("n", "<leader>tl", function()
  require("neotest").run.run_last()
end, { desc = "Re-run last test" })

map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Toggle test summary panel" })

map("n", "<leader>to", function()
  require("neotest").output.open { enter = true }
end, { desc = "Show test output" })

map("n", "<leader>tO", function()
  require("neotest").output_panel.toggle()
end, { desc = "Toggle output panel" })

map("n", "<leader>tx", function()
  require("neotest").run.stop()
end, { desc = "Stop running test" })

vim.keymap.set("n", "zR", function()
  require("ufo").openAllFolds()
end)
vim.keymap.set("n", "zM", function()
  require("ufo").closeAllFolds()
end)

-- Neogit
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Neogit" })

-- Gitsigns
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<cr>", { desc = "Blame line" })
vim.keymap.set("n", "]g", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next hunk" })
vim.keymap.set("n", "[g", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Prev hunk" })
vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })
