-- hypr globals
TERMINAL = "wezterm"
FILE_MANAGER = "dolphin"
BROWSER = "/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=firefox --file-forwarding org.mozilla.firefox"
-- toggle wofi
MENU = "pkill wofi || wofi --show drun"
DISCORD =
	"/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=com.discordapp.Discord --file-forwarding com.discordapp.Discord"

-- Monitors
MONITOR1 = "DP-3"
MONITOR2 = "DP-2"
PRIMARY_MONITOR = MONITOR1

-- Workspaces
NUM_WPM = 3 -- Number of workspaces per monitor (Max 10)
