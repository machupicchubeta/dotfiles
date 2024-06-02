local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config:set_strict_mode(true)

config.automatically_reload_config = false
config.color_scheme = 'tokyonight'
config.colors = {
  visual_bell = '#414868',
}
config.enable_scroll_bar = true
config.exit_behavior = 'Hold'
config.exit_behavior_messaging = 'Verbose'
config.font = wezterm.font_with_fallback({
  'BlexMono Nerd Font Mono',
  'FiraCode Nerd Font Mono',
  'NotoMono Nerd Font',
  'NotoSansM Nerd Font'
})
config.font_size = 16
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 134
config.initial_rows = 34
config.macos_window_background_blur = 20
config.notification_handling = "AlwaysShow"
config.scrollback_lines = 10000
config.swallow_mouse_click_on_pane_focus = false
config.use_fancy_tab_bar = true
config.tab_and_split_indices_are_zero_based = true
config.visual_bell = {
  fade_in_duration_ms = 150,
  fade_out_duration_ms = 150,
}
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.window_close_confirmation = 'NeverPrompt'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_opacity = 0.97

config.disable_default_key_bindings = true
config.leader = { key = 'a', mods = 'SUPER|CTRL|SHIFT', timeout_milliseconds = 1000 }
config.keys = {
  { key = 'n', mods = 'SUPER', action = wezterm.action.SpawnWindow },
  { key = 'm', mods = 'SUPER', action = wezterm.action.Hide },
  { key = 'Tab', mods = 'CTRL|ALT', action = wezterm.action.ActivateWindowRelative(1) },
  { key = 'Tab', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.ActivateWindowRelative(-1) },
  { key = 'Enter', mods = 'ALT', action = wezterm.action.ToggleFullScreen },

  { key = 't', mods = 'SUPER', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 't', mods = 'SUPER|SHIFT', action = wezterm.action.SpawnTab 'DefaultDomain' },
  { key = 't', mods = 'SUPER|CTRL|SHIFT', action = wezterm.action.ShowTabNavigator },
  { key = 'w', mods = 'SUPER', action = wezterm.action.CloseCurrentTab { confirm = true } },
  { key = '0', mods = 'SUPER', action = wezterm.action.ActivateTab(0) },
  { key = '1', mods = 'SUPER', action = wezterm.action.ActivateTab(1) },
  { key = '2', mods = 'SUPER', action = wezterm.action.ActivateTab(2) },
  { key = '3', mods = 'SUPER', action = wezterm.action.ActivateTab(3) },
  { key = '4', mods = 'SUPER', action = wezterm.action.ActivateTab(4) },
  { key = '5', mods = 'SUPER', action = wezterm.action.ActivateTab(5) },
  { key = '6', mods = 'SUPER', action = wezterm.action.ActivateTab(6) },
  { key = '7', mods = 'SUPER', action = wezterm.action.ActivateTab(7) },
  { key = '8', mods = 'SUPER', action = wezterm.action.ActivateTab(8) },
  { key = '9', mods = 'SUPER', action = wezterm.action.ActivateTab(9) },
  { key = 'Tab', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(1) },
  { key = 'Tab', mods = 'CTRL|SHIFT', action = wezterm.action.ActivateTabRelative(-1) },
  { key = 'LeftArrow', mods = 'SUPER|SHIFT', action = wezterm.action.MoveTabRelative(-1) },
  { key = 'RightArrow', mods = 'SUPER|SHIFT', action = wezterm.action.MoveTabRelative(1) },

  { key = '"', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = '%', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'w', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = true } },
  { key = 'n', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.RotatePanes 'Clockwise' },
  { key = 'b', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.RotatePanes 'CounterClockwise' },
  { key = 'LeftArrow', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Left', 1 } },
  { key = 'RightArrow', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Right', 1 } },
  { key = 'UpArrow', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Up', 1 } },
  { key = 'DownArrow', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Down', 1 } },
  { key = 'LeftArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'RightArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Right' },
  { key = 'UpArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'DownArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Down' },
  { key = 'z', mods = 'CTRL|SHIFT', action = wezterm.action.TogglePaneZoomState },

  { key = '-', mods = 'SUPER', action = wezterm.action.DecreaseFontSize },
  { key = '=', mods = 'SUPER', action = wezterm.action.IncreaseFontSize },
  { key = '0', mods = 'SUPER', action = wezterm.action.ResetFontSize },
  { key = '0', mods = 'SUPER|SHIFT', action = wezterm.action.ResetFontAndWindowSize },

  { key = 'UpArrow', mods = 'SUPER|SHIFT', action = wezterm.action.ScrollByLine(-1) },
  { key = 'DownArrow', mods = 'SUPER|SHIFT', action = wezterm.action.ScrollByLine(1) },
  { key = 'UpArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ScrollByPage(-0.5) },
  { key = 'DownArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ScrollByPage(0.5) },
  { key = 'UpArrow', mods = 'SUPER|ALT|SHIFT', action = wezterm.action.ScrollToTop },
  { key = 'DownArrow', mods = 'SUPER|ALT|SHIFT', action = wezterm.action.ScrollToBottom },
  { key = 'UpArrow', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.ScrollToTop },
  { key = 'DownArrow', mods = 'CTRL|ALT|SHIFT', action = wezterm.action.ScrollToBottom },

  { key = 'p', mods = 'SUPER|CTRL|SHIFT', action = wezterm.action.ActivateCommandPalette },
  { key = 'n', mods = 'SUPER|CTRL|SHIFT', action = wezterm.action.ShowLauncher },

  { key = 'f', mods = 'SUPER', action = wezterm.action.Search('CurrentSelectionOrEmptyString') },
  { key = 'u', mods = 'CTRL|SHIFT', action = wezterm.action.CharSelect },
  { key = 'x', mods = 'CTRL|SHIFT', action = wezterm.action.ActivateCopyMode },
  { key = ' ', mods = 'SUPER|ALT|SHIFT', action = wezterm.action.QuickSelect },

  { key = 'c', mods = 'SUPER', action = wezterm.action.CopyTo 'Clipboard' },
  { key = 'v', mods = 'SUPER', action = wezterm.action.PasteFrom 'Clipboard' },

  { key = 'r', mods = 'SUPER', action = wezterm.action.ReloadConfiguration },
  { key = 'l', mods = 'CTRL|SHIFT', action = wezterm.action.ShowDebugOverlay },
  { key = 'h', mods = 'SUPER', action = wezterm.action.HideApplication },
  { key = 'q', mods = 'SUPER', action = wezterm.action.QuitApplication },
}

local mux = wezterm.mux

local cache_dir = os.getenv('HOME') .. '/.cache/wezterm/'
local window_size_cache_path = cache_dir .. 'window_size_cache.txt'

wezterm.on('gui-startup', function()
  os.execute('mkdir ' .. cache_dir)

  local window_size_cache_file = io.open(window_size_cache_path, 'r')
  if window_size_cache_file ~= nil then
    _, _, width, height = string.find(window_size_cache_file:read(), '(%d+),(%d+)')
    local tab, pane, window = mux.spawn_window{ width = tonumber(width), height = tonumber(height) }
    window:spawn_tab {}
    window_size_cache_file:close()
  else
    local tab, pane, window = mux.spawn_window{}
    window:spawn_tab {}
    window:gui_window():maximize()
  end
end)

wezterm.on('window-resized', function(window, pane)
  local window_size_cache_file = io.open(window_size_cache_path, 'r')
  if window_size_cache_file == nil then
    local tab_size = pane:tab():get_size()
    cols = tab_size['cols']
    rows = tab_size['rows'] + 2 -- Without adding the 2 here, the window doesn't maximize
    contents = string.format('%d,%d', cols, rows)
    window_size_cache_file = assert(io.open(window_size_cache_path, 'w'))
    window_size_cache_file:write(contents)
    window_size_cache_file:close()
  end
end)

return config
