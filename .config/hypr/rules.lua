-- Make Discord floating and open it on special workspace.
hl.window_rule({
	name = "discord-floating",
	match = {
		class = "discord",
	},
	float = true,
	workspace = "special:discord silent",
})
-- Make hyprbind floating.
hl.window_rule({
	name = "hyprbind-floating",
	match = {
		title = "HyprBind",
	},
	float = true,
})
-- Make Pipewire floating.
hl.window_rule({
	name = "pwvucontrol-floating",
	match = {
		class = "com.saivert.pwvucontrol",
	},
	float = true,
})
