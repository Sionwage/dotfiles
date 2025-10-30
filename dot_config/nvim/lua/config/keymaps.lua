-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("i", "kj", "<ESC>", opts)
vim.keymap.set("n", "<leader>ob", ":Obsidian backlinks<CR>", opts)
vim.keymap.set("n", "<leader>od", ":Obsidian today<CR>", opts)
vim.keymap.set("n", "<leader>op", ":ObsidianBridgePickCommand<CR>", opts)
vim.keymap.set("n", "<leader>oo", ":Obsidian<CR>", opts)
vim.keymap.set("n", "<leader>os", ":Obsidian search<CR>", opts)
vim.keymap.set("n", "<leader>ot", ":Obsidian tomorrow<CR>", opts)
vim.keymap.set("n", "<leader>oq", ":Obsidian quick_switch<CR>", opts)
vim.keymap.set("v", "<leader>ox", ":ObsidianExtractNote", opts)
vim.keymap.set("n", "<leader>oy", ":Obsidian yesterday<CR>", opts)

vim.keymap.set("n", "-", ":Oil<CR>", opts)

vim.keymap.set("n", "<space>rx", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>r", ":.lua<CR>")
vim.keymap.set("v", "<space>r", ":lua<CR>")
