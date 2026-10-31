hl.on("hyprland.start", function()
	hl.exec_cmd("waybar -c $HOME/.config/waybar/config.jsonc -s $HOME/.config/waybar/style.css")
end)
-- Launch Discord when Hyprland starts
hl.on("hyprland.start", function()
	hl.exec_cmd(DISCORD)
end)
