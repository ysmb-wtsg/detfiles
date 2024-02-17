local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Ayu Dark (Gogh)"

config.font_size = 15

local act = wezterm.action
config.keys = {
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "f",
		mods = "CMD",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "h",
		mods = "CMD",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "h",
		mods = "CMD|SHIFT",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "h",
		mods = "CTRL",
		action = wezterm.action.SendKey({ key = "LeftArrow" }),
	},
	{
		key = "j",
		mods = "CMD",
		action = wezterm.action({ ScrollByLine = 1 }),
	},
	{
		key = "j",
		mods = "CMD|SHIFT",
		action = wezterm.action({ ScrollByPage = 1 }),
	},
	{
		key = "j",
		mods = "CTRL",
		action = wezterm.action.SendKey({ key = "DownArrow" }),
	},
	{
		key = "k",
		mods = "CMD",
		action = wezterm.action({ ScrollByLine = -1 }),
	},
	{
		key = "k",
		mods = "CMD|SHIFT",
		action = wezterm.action({ ScrollByPage = -1 }),
	},
	{
		key = "k",
		mods = "CTRL",
		action = wezterm.action.SendKey({ key = "UpArrow" }),
	},
	{
		key = "l",
		mods = "CMD",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "l",
		mods = "CTRL",
		action = wezterm.action.SendKey({ key = "RightArrow" }),
	},
	{
		key = "l",
		mods = "CMD|SHIFT",
		action = act.ActivateTabRelative(1),
	},
	{
		key = "p",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "t",
		mods = "CMD",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	{
		key = "z",
		mods = "CMD",
		action = wezterm.action.TogglePaneZoomState,
	},
}

return config
