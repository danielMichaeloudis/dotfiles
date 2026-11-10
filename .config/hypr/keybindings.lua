local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(TERMINAL), { description = "Open Wezterm terminal" })
local closeWindowBind =
	hl.bind("ALT + F4", hl.dsp.window.close(), { description = "Close the currently active window" })
-- closeWindowBind:set_enabled(false)
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"),
	{ description = "Shut down Hyprland" }
)
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(FILE_MANAGER), { description = "Open Dolphin file manager" })
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(BROWSER), { description = "Open Firefox browser" })
-- Toggle Discord between workspace 9 and the current workspace
hl.bind(mainMod .. "+ D", function()
	local windows = hl.get_windows({ class = "discord" })
	-- Launch Discord if it isn't running
	if #windows == 0 then
		hl.exec_cmd(DISCORD)
	end
	hl.dispatch(hl.dsp.workspace.toggle_special("discord"))
	return
end, { description = "Switch to or open Discord" })
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating mode" })
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(MENU), { description = "Open the Wofi application launcher" })
hl.bind("SUPER_L", hl.dsp.exec_cmd(MENU), { release = true, description = "Open the Wofi application launcher" })
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo(), { description = "Toggle pseudo mode" })
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"), { description = "Toggle split" }) -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }), { description = "Move focus to the left" })
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }), { description = "Move focus to the right" })
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }), { description = "Move focus up" })
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }), { description = "Move focus down" })

-- Move workspace to different monitor
hl.bind(
	mainMod .. " + CTRL + 1",
	hl.dsp.workspace.move({ monitor = MONITOR1 }),
	{ description = "Move the current workspace to monitor 1" }
)
hl.bind(
	mainMod .. " + CTRL + 2",
	hl.dsp.workspace.move({ monitor = MONITOR2 }),
	{ description = "Move the current workspace to monitor 2" }
)

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }), { description = "Focus on workspace " .. key })
	hl.bind(
		mainMod .. " + SHIFT + " .. key,
		hl.dsp.window.move({ workspace = i }),
		{ description = "Move the current window to workspace " .. key }
	)
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"), { description = "Toggle the magic workspace" })
hl.bind(
	mainMod .. " + SHIFT + S",
	hl.dsp.window.move({ workspace = "special:magic" }),
	{ description = "Move the current window to the magic workspace" }
)

-- Scroll through existing workspaces with mainMod + scroll
-- hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "" })
-- hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "" })

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Drag the selected window" })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Resize the selected window" })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+ && ~/.local/bin/volume-slider"),
	{ locked = true, repeating = true, description = "Increase audio volume by 5%" }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && ~/.local/bin/volume-slider"),
	{ locked = true, repeating = true, description = "Decrease the volume by 5%" }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && ~/.local/bin/volume-slider"),
	{ locked = true, repeating = true, description = "Toggle mute mode" }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true, description = "Toggle mute microphone" }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
	{ locked = true, repeating = true, description = "Increase the brightness by 5%" }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
	{ locked = true, repeating = true, description = "Decrease the brightness by 5%" }
)

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, description = "Next music/video" })
hl.bind(
	"XF86AudioPause",
	hl.dsp.exec_cmd("playerctl play-pause"),
	{ locked = true, description = "Play/Pause music/video" }
)
hl.bind(
	"XF86AudioPlay",
	hl.dsp.exec_cmd("playerctl play-pause"),
	{ locked = true, description = "Play/Pause music/video" }
)
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true, description = "Previous music/video" })

-- Minimize
hl.bind(mainMod .. " + X", function()
	if hl.get_workspace("special:minimized") then
		hl.dispatch(hl.dsp.window.move({ workspace = hl.get_active_workspace(), window = "tag:minimized" }))
		hl.dispatch(hl.dsp.window.clear_tags({ window = "tag:minimized" }))
	else
		hl.dispatch(hl.dsp.window.tag({ tag = "minimized", window = hl.get_active_window() }))
		hl.dispatch(hl.dsp.window.move({ workspace = "special:minimized", follow = false }))
	end
end, { description = "Minimize/Maximize current window" })

-- Fullscreen
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(), { description = "Toggle fullscreen" })

-- Hyprlock
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"), { description = "Lock the device" })

-- Show Keybindings
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("pkill hyprbind || hyprbind"), { description = "Show keybindings" })

-- Colour Picker
hl.bind(mainMod .. " + C ", hl.dsp.exec_cmd("pkill hyprpicker || hyprpicker --autocopy"))
