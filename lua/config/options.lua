-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.scrolloff = 8
opt.hlsearch = false
opt.incsearch = true

opt.isfname:append("@-@")

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
