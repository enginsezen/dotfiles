-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ==========================================================
-- Better window navigation
-- ==========================================================

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Right window" })

-- ==========================================================
-- Resize windows
-- ==========================================================

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

-- ==========================================================
-- Better clipboard
-- ==========================================================

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- ==========================================================
-- Quick save
-- ==========================================================

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>a", { desc = "Save file" })

-- ==========================================================
-- Quit
-- ==========================================================

vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
