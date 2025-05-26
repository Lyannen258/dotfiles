local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Tokyo Night Storm"
config.window_frame = {
	active_titlebar_bg = "#24283b",
}

config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = "#364a82",
			fg_color = "#c0caf5",
		},
		inactive_tab = {
			bg_color = "#24283b",
			fg_color = "#c0caf5",
		},
		new_tab = {
			bg_color = "#364a82",
			fg_color = "#c0caf5",
		},
	},
}

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

tabline.setup({
	options = {
		icons_enabled = true,
		theme = "Tokyo Night Storm",
		tabs_enabled = true,
		theme_overrides = {},
		section_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
		component_separators = {
			left = wezterm.nerdfonts.pl_left_soft_divider,
			right = wezterm.nerdfonts.pl_right_soft_divider,
		},
		tab_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
	},
	sections = {
		tabline_a = { "mode" },
		tabline_b = { "workspace" },
		tabline_c = { " " },
		tab_active = {
			"index",
			{ "parent", padding = 0 },
			"/",
			{ "cwd", padding = { left = 0, right = 1 } },
			{ "zoomed", padding = 0 },
		},
		tab_inactive = { "index", { "process", padding = { left = 0, right = 1 } } },
		tabline_x = { "ram", "cpu" },
		tabline_y = { "datetime", "battery" },
		tabline_z = { "domain" },
	},
	extensions = {},
})

tabline.apply_to_config(config)

return config
