local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

wezterm.on("gui-startup", function()
  local window = mux.spawn_window{}
  window:gui_window():maximize()
end)

config.font = wezterm.font("Fira Code")
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.97
config.macos_window_background_blur = 30
config.initial_rows = 40
config.initial_cols = 150

config.keys = {
  {
    key = 'f',
    mods = 'CTRL|CMD',
    action = wezterm.action.ToggleFullScreen,
  },
}


config.colors = {
  background = "#0d1117",
  foreground = "#c9d1d9",

  cursor_bg = "#c9d1d9",
  cursor_fg = "#0d1117",
  cursor_border = "#c9d1d9",

  selection_bg = "#c9d1d9",
  selection_fg = "#0d1117",

  ansi = {
    '#484f58',
    '#ff7b72',
    '#58a6ff',
    '#d29922',
    '#58a6ff',
    '#bc8cff',
    '#39c5cf',
    '#b1bac4',
  },
  brights = {
    '#6e7681',
    '#ffa198',
    '#79c0ff',
    '#e3b341',
    '#79c0ff',
    '#bc8cff',
    '#39c5cf',
    '#b1bac4',
  },

}

return config
