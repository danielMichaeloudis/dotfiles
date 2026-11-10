local cmp = require "cmp"

return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        cmd = "Telescope",
        opts = function()
            return {}
        end,
    },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform",
    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform",
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rust-analyzer",
                "stylua",
                "lua-language-server",
                "clangd",
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {

            filters = {
                dotfiles = false,
            },
        },
        config = function(_, opts)
            require("nvim-tree").setup(opts)
        end,
    },
    {
        "mfussenegger/nvim-dap",
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        lazy = false,
        config = function(_, opts)
            require("nvim-dap-virtual-text").setup()
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            local M = require "nvchad.configs.cmp"
            M.completion.completeopt = "menu,menuone,noselect"
            M.mapping["<CR>"] = cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Insert,
                select = false,
            }
            table.insert(M.sources, { name = "crates" })
            return M
        end,
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            -- configurations go here
        },
        lazy = false,
    },
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*", -- use latest release, remove to use latest commit
        ---@module 'obsidian'
        ---@type obsidian.config
        opts = {},
        lazy = false,
        config = function()
            require("obsidian").setup {
                picker = {
                    name = "telescope.nvim",
                },
                workspaces = {
                    {
                        name = "personal",
                        path = "~/Documents/Obsidian Vault/",
                    },
                },
                legacy_commands = false,
            }
        end,
    },
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
        },
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        event = "BufReadPost",
        config = function()
            require("rainbow-delimiters.setup").setup {
                strategy = {
                    [""] = "rainbow-delimiters.strategy.global",
                },
                query = {
                    [""] = "rainbow-delimiters",
                },
                highlight = {
                    "RainbowDelimiterYellow",
                    "RainbowDelimiterViolet",
                    "RainbowDelimiterBlue",
                },
            }
        end,
    },
    { "tpope/vim-surround", lazy = false },
    {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
    },
}
