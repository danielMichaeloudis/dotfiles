-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog = { 'pwsh.exe' }

-- Initial window setup.
config.initial_cols = 120
config.initial_rows = 28

-- Colours and font.
config.font_size = 12
config.color_scheme = 'nord'
config.font = wezterm.font 'FantasqueSansM Nerd Font'

-- Keybindings.
config.leader = {key = "Space", mods = "CTRL"}
local tmux_keys = require("tmux-nvim-keybindings")
config.keys = tmux_keys.keys


return config
