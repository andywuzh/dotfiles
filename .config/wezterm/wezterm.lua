local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

-- font
config.font = wezterm.font("JetBrains Mono")
-- config.font = wezterm.font_with_fallback("Fira Code", "JetBrains Mono")

-- config.color_scheme = 'AdventureTime'

config.enable_scroll_bar = true

-- keys binding
-- ALT-{1..9} 切换tab
config.keys = {}
for i = 1, 9 do
	table.insert(config.keys, { key = string.format("%d", i), mods = "ALT", action = act.ActivateTab(i - 1) })
end
-- CTRL-ALT-[ 切换到上一个tab
table.insert(config.keys, { key = "[", mods = "CTRL|ALT", action = act.MoveTabRelative(-1) })
-- CTRL-ALT-] 切换到下一个tab
table.insert(config.keys, { key = "]", mods = "CTRL|ALT", action = act.MoveTabRelative(1) })

return config
