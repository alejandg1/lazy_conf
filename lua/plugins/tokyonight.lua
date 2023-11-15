return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      style = "night",
      terminal_colors = true,
    },
  },
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "tokyonight",
  },
  enabled = true,
}
