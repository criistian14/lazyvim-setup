-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

-- Code
vim.keymap.set("n", "<C-a>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

-- Remap windows resizing
vim.keymap.set("n", "<A-Up>", ":resize +5<CR>", opts)
vim.keymap.set("n", "<A-Down>", ":resize -5<CR>", opts)
vim.keymap.set("n", "<A-Left>", ":vertical resize +5<CR>", opts)
vim.keymap.set("n", "<A-Right>", ":vertical resize -5<CR>", opts)
