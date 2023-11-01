return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {--[[ things you want to change go here]]
      vim.keymap.set("n", "<space>tt", ":ToggleTerm<CR>"),
      vim.keymap.set("n", "<space>tf", ":ToggleTerm direction=float<CR>"),
      vim.keymap.set("n", "<space>tv", ":ToggleTerm direction=vertical<CR>"),
    },
  },
}
