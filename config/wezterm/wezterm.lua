local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config:set_strict_mode(true)

config.window_decorations = 'RESIZE'

config.window_frame = {
  font = wezterm.font_with_fallback({
    'BlexMono Nerd Font Mono',
    'FiraCode Nerd Font Mono',
    'NotoMono Nerd Font',
    'NotoSansM Nerd Font'
  }),
  font_size = 12,
  -- inactive_titlebar_bg = '#353535',
  -- active_titlebar_bg = '#2b2042',
  -- inactive_titlebar_fg = '#cccccc',
  -- active_titlebar_fg = '#ffffff',
  -- inactive_titlebar_border_bottom = '#2b2042',
  -- active_titlebar_border_bottom = '#2b2042',
  button_fg = '#cccccc',
  button_bg = '#2b2042',
  button_hover_fg = '#ffffff',
  button_hover_bg = '#3b3052',

  -- border_left_width = '0.5cell',
  -- border_right_width = '0.5cell',
  -- border_bottom_height = '0.25cell',
  -- border_top_height = '0.25cell',
  -- border_left_color = 'purple',
  -- border_right_color = 'purple',
  -- border_bottom_color = 'purple',
  -- border_top_color = 'purple',
}

-- config.window_padding = {
--   left = '1cell',
--   right = '1cell',
--   top = '0.5cell',
--   bottom = '0.5cell',
-- }

-- config.visual_bell = {
--   fade_in_function = 'EaseIn',
--   fade_in_duration_ms = 150,
--   fade_out_function = 'EaseOut',
--   fade_out_duration_ms = 150,
-- }

config.visual_bell = {
  fade_in_duration_ms = 75,
  fade_out_duration_ms = 75,
  target = 'CursorColor',
}

config.colors = {
  visual_bell = '#202020',
}

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

function tab_title(tab_info)
  local title = tab_info.tab_title
  if title and #title > 0 then
    return title
  end
  return tab_info.tab_index + 1 .. ': ' .. tab_info.active_pane.title
end

wezterm.on(
  'format-tab-title',
  function(tab, tabs, panes, config, hover, max_width)
    local edge_background = '#0b0022'
    local background = '#1b1032'
    local foreground = '#808080'
    local left_edge_mark = wezterm.nerdfonts.ple_left_half_circle_thick
    local right_edge_mark = wezterm.nerdfonts.ple_right_half_circle_thick

    if tab.is_active then
      background = '#2b2042'
      foreground = '#c0c0c0'
    elseif hover then
      background = '#3b3052'
      foreground = '#909090'
    end

    local edge_foreground = background
    local title = tab_title(tab)

    title = wezterm.truncate_right(title, max_width - 2)

    return {
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = left_edge_mark },
      { Background = { Color = background } },
      { Foreground = { Color = foreground } },
      { Text = title },
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = right_edge_mark },
    }
  end
)

config.color_scheme = 'tokyonight'
wezterm.font_with_fallback({
  'BlexMono Nerd Font Mono',
  'FiraCode Nerd Font Mono',
  'NotoMono Nerd Font',
  'NotoSansM Nerd Font'
})
config.font_size = 16

config.enable_scroll_bar = true
config.initial_cols = 132
config.initial_rows = 32

config.scrollback_lines = 10000

local act = wezterm.action
config.keys = {
  { key = 'LeftArrow', mods = 'SHIFT|CMD', action = act.MoveTabRelative(-1) },
  { key = 'RightArrow', mods = 'SHIFT|CMD', action = act.MoveTabRelative(1) }
}

return config
