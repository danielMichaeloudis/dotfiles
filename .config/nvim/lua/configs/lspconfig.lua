local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "nvchad.configs.lspconfig"

lspconfig.servers = { "html", "cssls", "ts_ls", "pyright", "ruff", "vtsls", "clangd" }

local servers = { "ruff", "ty", "vtsls", "ts_ls", "clangd" }

vim.lsp.config("ruff", {

  init_options = {
    settings = {
      organizeImports = true,
      fixAll = true,
    },
  },
})

vim.lsp.enable(servers)
