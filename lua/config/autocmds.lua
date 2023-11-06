-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local Custom_Fugitive = vim.api.nvim_create_augroup("Custom_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
  group = Custom_Fugitive,
  pattern = "*",
  callback = function()
    if vim.bo.ft ~= "fugitive" then
      return
    end

    local bufnr = vim.api.nvim_get_current_buf()
    vim.keymap.set("n", "<leader>gp", function()
      vim.cmd.Git("push")
    end, { buffer = bufnr, remap = false, desc = "Perform [G]it [P]ush" })

    -- rebase always
    vim.keymap.set("n", "<leader>gP", function()
      vim.cmd.Git({ "pull", "--rebase" })
    end, { buffer = bufnr, remap = false, desc = "Perform [G]it [P]ull with rebase" })

    -- NOTE: It allows me to easily set the branch i am pushing and any tracking
    -- needed if i did not set the branch up correctly
    vim.keymap.set(
      "n",
      "<leader>gt",
      ":Git push -u origin ",
      { buffer = bufnr, remap = false, desc = "Se[t] upstream and push" }
    )
  end,
})
