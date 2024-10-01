local wezterm = require("wezterm") --[[@as Wezterm]]

local cfg = wezterm.config_builder()

require("tabs").setup(cfg)
-- require("mouse").setup(cfg)
require("keys").setup(cfg)

-- reverting to default link handling for now
-- require("links").setup(cfg)

-- not in use for now, but retained
-- require("events")

-- react to changes
cfg.automatically_reload_config = true
cfg.adjust_window_size_when_changing_font_size = false

-- appearance
cfg.color_scheme = "Catppuccin Mocha"
-- cfg.enable_tab_bar = false
cfg.enable_scroll_bar = false
cfg.initial_cols = 180
cfg.initial_rows = 80

-- rendering
cfg.animation_fps = 60
cfg.max_fps = 60
cfg.front_end = "WebGpu"
cfg.webgpu_power_preference = "HighPerformance"

-- fonts
cfg.font = wezterm.font_with_fallback({
	"Cascadia Code PL",
	"CaskadiaCove NF",
	"Noto Color Emoji",
})

-- font config
cfg.harfbuzz_features = { "calt", "dlig", "clig", "ss01", "ss03", "ss04", "ss05", "ss06" }
cfg.font_size = 13
cfg.line_height = 1.0

-- window
cfg.window_decorations = "RESIZE"
cfg.window_padding = {
	left = 14,
	right = 10,
	top = 14,
	bottom = 8,
}
cfg.window_close_confirmation = "NeverPrompt"
cfg.native_macos_fullscreen_mode = false


return cfg
