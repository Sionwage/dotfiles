-- Neovim Config

print("Sourcing init.lua")

-- set the leader key before plugins to prevent the wrong key getting mapped
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- setting the path for the neovim specific python distribution
vim.g.python3_host_prog = 'C:/Users/dziliak/Python Venv/neovim_venv/.venv/Scripts/python.exe'

-- disable unused languages
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- show line numbers on the left side
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[Configure and install plugins ]]
require 'lazy-plugins'
