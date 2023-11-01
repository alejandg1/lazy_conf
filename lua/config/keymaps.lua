-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<space>e", require("oil").open, { desc = "Open parent directory" })
--vim.keymap.set("n", "<space>E", ":Neotree toggle<CR>", { desc = "Open tree" })
--- deshabilitando flechas
vim.keymap.set("n", "<space>1", ":up<CR>", { desc = "update" })
vim.keymap.set("n", "<Up>", "")
vim.keymap.set("n", "<Down>", "")
vim.keymap.set("n", "<Right>", "")
vim.keymap.set("n", "<Left>", "")
----------------------
-- Open compiler
vim.api.nvim_buf_set_keymap(
  0,
  "n",
  "<F6>",
  "<cmd>CompilerOpen<cr>",
  { noremap = true, silent = true, desc = "compiler open" }
)

-- Toggle compiler results
vim.api.nvim_buf_set_keymap(
  0,
  "n",
  "<S-F6>",
  "<cmd>CompilerToggleResults<cr>",
  { noremap = true, silent = true, desc = "compiler toggle results" }
)
-- atajos

vim.keymap.set("n", "<Leader>r", ":source<CR>", { desc = "reload source" })
