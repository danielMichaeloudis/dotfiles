require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Code Actions.
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })

-- rename variables
vim.keymap.set("n", "<F2>", function()
  require "nvchad.lsp.renamer"()
end, { desc = "LSP Rename Variable" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
