require "nvchad.options"

-- Reduce delay from default 4000ms to 250ms for snappier floats
vim.o.updatetime = 250

-- Automatically open diagnostic float on cursor hover
vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})

vim.g.lazyvim_python_ruff = "ruff"
