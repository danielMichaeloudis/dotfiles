-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

M.keys = {
	{
		key = "h",
		mods = "ALT|SHIFT",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "l",
		mods = "ALT|SHIFT",
		action = act.ActivateTabRelative(1),
	},
	{
		key = "c",
		mods = "LEADER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "x",
		mods = "LEADER",
		action = act.CloseCurrentTab({ confirm = true }),
	},
}

return M
