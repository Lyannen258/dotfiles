local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'tokyonight-storm'
config.window_frame = { 
  active_titlebar_bg = "#24283b"
}

config.colors = {
  tab_bar = {
    active_tab = {
      bg_color = "#364a82",
      fg_color = "#c0caf5"
    },
    inactive_tab = {
      bg_color = "#24283b",
      fg_color = "#c0caf5"
    },
    new_tab = {
      bg_color = "#364a82",
      fg_color = "#c0caf5"
    }
  }
}

return config
