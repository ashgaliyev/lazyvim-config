-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
map("n", "<leader>bt", ":ToggleTerm direction=float <CR>", { desc = "Open terminal" })
map("n", "<leader>bT", ":ToggleTerm direction=horizontal <CR>", { desc = "Open horizontal terminal split" })
