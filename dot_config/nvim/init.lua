-- Neovim Config
--

-- print("Sourcing init.lua")

-- set the leader key before plugins to prevent the wrong key getting mapped
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>')

-- enable nerdfonts
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[Configure and install plugins ]]
require 'lazy-plugins'

