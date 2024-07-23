-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.vscode then
  vim.keymap.set("", "<Space>", "<Nop>")
  vim.g.mapleader = " "
  vim.cmd("source $HOME/.config/nvim/vscode/settings.vim")
end
