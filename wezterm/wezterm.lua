local wezterm = require('wezterm');

return {
  font = wezterm.font('JetBrains Mono', { weight = 'Medium', italic = false }),
  font_size = 13.0,
  color_scheme = "nord",
  harfbuzz_features = {"calt=0", "clig=0", "liga=0"},

  window_frame = {
    font = wezterm.font('JetBrains Mono', { weight = 'Medium', italic = false }),
    font_size = 10.0,
  },

  colors = {
    tab_bar = {
      background = "#0b0022",

      active_tab = {
        bg_color = "#3B4252",
        fg_color = "#fff",
      },

      inactive_tab = {
        bg_color = "#2E3440",
        fg_color = "#c0c0c0",
      },

      inactive_tab_hover = {
        bg_color = "#3B4252",
        fg_color = "#fff",
        italic = false,
      }
    },
  },
}

