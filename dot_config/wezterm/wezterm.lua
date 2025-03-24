-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.colors = require("cyberdream")

-- Change default font
-- config.font = wezterm.font('EnvyCodeR Nerd Font Mono', {weight='Bold', stretch='Normal', style='Normal'})

-- Disable audible bell
config.audible_bell = "Disabled"

-- Remove the title bar from Wezterm
config.window_decorations = "RESIZE"

-- brighten ansi colors when bold
config.bold_brightens_ansi_colors = true

-- disable animation
config.default_cursor_style = "BlinkingBar"
config.animation_fps = 60
-- config.cursor_blink_ease_in = 'Ease'
-- config.cursor_blink_ease_out = 'Ease'
-- config.cursor_blink_rate = 100

config.window_background_opacity = 0.85
config.text_background_opacity = 0.85

-- config.front_end = "Software"
-- for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
-- 	if gpu.backend == "Vulkan" and gpu.device_type == "IntegratedGpu" then
-- 		config.webgpu_preferred_adapter = gpu
-- 		config.front_end = "WebGpu"
-- 		break
-- 	end
-- end
config.webgpu_power_preference = "HighPerformance"
-- config.front_end = "WebGpu"
-- config.prefer_egl = false
-- config.win32_system_backdrop = "Acrylic"

-- WSL Domains
config.wsl_domains = {

	{
		-- The name of this specific domain.  Must be unique amonst all types
		-- of domain in the configuration file.
		name = "WSL:Ubuntu-24.04-neovim",

		-- The name of the distribution.  This identifies the WSL distribution.
		-- It must match a valid distribution from your `wsl -l -v` output in
		-- order for the domain to be useful.
		distribution = "Ubuntu-24.04-neovim",
	},
}

config.launch_menu = {
	{
		label = "Powershell 7.4.6",
		args = { "pwsh.exe" },
		cwd = "C:/Users/dziliak",
	},
	{
		label = "Command Prompt",
		args = { "cmd.exe" },
		cwd = "C:/Users/dziliak",
	},
}

-- start Powershell instead of Windows Command Prompt on new Wezterm instance
config.default_prog = { "pwsh.exe", "-NoLogo" }

-- and finally, return the configuration to wezterm
return config
