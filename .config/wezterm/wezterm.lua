local wezterm = require 'wezterm'
local act = wezterm.action

local config = wezterm.config_builder()

-- config.color_scheme = 'AdventureTime'

config.enable_scroll_bar = true

-- keys binding
-- ALT-{1..9} 切换tab
config.keys = {}
for i=1,9 do
  table.insert(config.keys, { key = string.format('%d', i), mods = 'ALT', action = act.ActivateTab(i-1) })
end


return config
