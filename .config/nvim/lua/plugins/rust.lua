return {
  {
    "mrcjkb/rustaceanvim",
    version = "^9",
    ft = { "rust" },
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      require "configs.rustaceanvim"
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      require("cmp").setup.buffer {
        sources = { { name = "crates" } },
      }
      crates.show()
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}
