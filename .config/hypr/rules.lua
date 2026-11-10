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

-- Make volume slider floating with no borders.
hl.window_rule({
	name = "volume-slider",
	match = {
		class = "com.danstuff.volumeslider",
	},
	float = true,
	border_size = 0,
	no_anim = true,
	no_initial_focus = true,
})
