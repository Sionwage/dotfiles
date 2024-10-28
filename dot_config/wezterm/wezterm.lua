-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'
-- Change default font
config.font = wezterm.font('EnvyCodeR Nerd Font Mono', {weight='Bold', stretch='Normal', style='Normal'})

-- WSL Domains
config.wsl_domains = {
  {
    -- The name of this specific domain.  Must be unique amonst all types
    -- of domain in the configuration file.
    name = 'WSL:Ubuntu-24.04',

    -- The name of the distribution.  This identifies the WSL distribution.
    -- It must match a valid distribution from your `wsl -l -v` output in
    -- order for the domain to be useful.
    distribution = 'Ubuntu-24.04',
  },
}

config.launch_menu = {
  {
    label = 'Powershell 7.4.6',
    args = { 'pwsh.exe' },
    cwd = 'C:/Users/dziliak',
  },
  {
    label = 'Command Prompt',
    args = { 'cmd.exe' },
    cwd = 'C:/Users/dziliak',
  },
}

-- start Powershell instead of Windows Command Prompt on new Wezterm instance
config.default_prog = { 'pwsh.exe', '-NoLogo' }

-- and finally, return the configuration to wezterm
return config
