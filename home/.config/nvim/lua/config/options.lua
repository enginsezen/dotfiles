-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- ==========================================================
-- General
-- ==========================================================

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

-- ==========================================================
-- Numbers
-- ==========================================================

vim.opt.number = true
vim.opt.relativenumber = true

-- ==========================================================
-- Search
-- ==========================================================

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- ==========================================================
-- Indentation
-- ==========================================================

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

-- ==========================================================
-- UI
-- ==========================================================

vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false

-- ==========================================================
-- Split
-- ==========================================================

vim.opt.splitbelow = true
vim.opt.splitright = true

-- ==========================================================
-- Undo
-- ==========================================================

vim.opt.undofile = true

-- ==========================================================
-- Update
-- ==========================================================

vim.opt.updatetime = 250

-- ==========================================================
-- Cursor
-- ==========================================================

vim.opt.cursorline = true
