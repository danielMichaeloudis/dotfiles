-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- config.default_prog = { 'pwsh.exe' }
config.warn_about_missing_glyphs = false

-- Initial window setup.
config.initial_cols = 120
config.initial_rows = 28

-- Colours and font.
config.font_size = 12
config.color_scheme = "nord"
config.font = wezterm.font("FantasqueSansM Nerd Font")
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.colors = {
	tab_bar = {
		background = "#3b4252",
		active_tab = {
			fg_color = "#3b4252",
			bg_color = "#88C0D0",
		},
		inactive_tab = {
			fg_color = "#b0b5c0",
			bg_color = "#4c566a",
		},
		inactive_tab_hover = {
			fg_color = "#b0b5c0",
			bg_color = "#4c566a",
		},
		new_tab = {
			fg_color = "#465163",
			bg_color = "#81a1c1",
		},
		new_tab_hover = {
			fg_color = "#465163",
			bg_color = "#81a1c1",
		},
	},
}

-- Keybindings.
config.leader = { key = "Space", mods = "CTRL" }
local tmux_keys = require("tmux-nvim-keybindings")
config.keys = tmux_keys.keys

return config
