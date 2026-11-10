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
local is_windows = vim.fn.has "win32" ~= 0
if is_windows then
    map("n", "<c-n>", function() end)
end
map(
    "n",
    "<leader>ff",
    "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
    default_opts
)

-- Obsidian

map("n", "<leader>ot", "<cmd>Obsidian today<cr>")
map("n", "<leader>oy", "<cmd>Obsidian today -1<cr>")
map("n", "<leader>or", "<cmd>Obsidian today +1<cr>")
map("n", "<leader>on", "<cmd>Obsidian new<cr>")
map("n", "<leader>fo", "<cmd>Obsidian quick_switch<cr>")
-- trouble

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", {
    desc = "Diagnostics (Trouble)",
})

map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })

map("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })

map(
    "n",
    "<leader>cl",
    "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
    { desc = "LSP Definitions / references / ... (Trouble)" }
)

map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })

map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
