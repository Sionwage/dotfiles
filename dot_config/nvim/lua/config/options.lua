-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- setting the path for the neovim specific python distribution
vim.g.python3_host_prog = "C:/Users/dziliak/Python Venv/neovim_venv/.venv/Scripts/python.exe"

-- disable perl and ruby providers
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

--To make powershell work with neovim.
vim.cmd([[
let &shell = has('win32') ? 'powershell' : 'pwsh'
let &shellcmdflag = '-NoLogo -File "C:\Users\dziliak\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
set shellquote= shellxquote=
]])
