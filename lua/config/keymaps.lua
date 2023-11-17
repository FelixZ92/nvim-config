-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("n", "<leader>Hn", function()
  require("which-key").show("", { mode = "n", auto = true })
end, { desc = "[H]elp for [n]ormal mode" })

vim.keymap.set("n", "<leader>Hv", function()
  require("which-key").show("", { mode = "v", auto = true })
end, { desc = "[H]elp for [v]isual mode" })

vim.keymap.set("n", "<leader>Hi", function()
  require("which-key").show("", { mode = "i", auto = true })
end, { desc = "[H]elp for [i]nsert mode" })

vim.keymap.set("n", "<leader>Ht", function()
  require("which-key").show("", { mode = "t", auto = true })
end, { desc = "[H]elp for [t]erminal mode" })

-- keep cursor in screen mid when half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump half page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump half page up" })
-- keep cursor in screen mid when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep paste buffer when highlighted in visual mode
vim.keymap.set("x", "<leader>p", '"_dP')

-- support ctrl-c for multiline edit via in visual block mode
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Apply multiline insert" })

vim.keymap.set(
  "n",
  "<leader>rw",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "VIM foo to replace current word" }
)

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus (fugitive)" })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
