return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local icons = require("lazyvim.config").icons
    local Util = require("lazyvim.util")

    return {
      options = {
        theme = "auto",
        globalstatus = true,
        component_separators = "|",
        disabled_filetypes = { statusline = { "dashboard", "alpha", "oil" } },
        section_separators = { left = "", rigth = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          {
            "filename",
            path = 1,
            symbols = { modified = " ", readonly = "R!", unnamed = "Un" },
          },
          --NOTE: mostrar metodos
          -- stylua: ignore
          -- {
          --   function() return require("nvim-navic").get_location() end,
          --   cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
          -- },
        },
        lualine_x = {
          --NOTE: mostrar diff
          -- stylua: ignore
          -- {
          --   function() return require("noice").api.status.command.get() end,
          --   cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
          --   color = Util.fg("Statement"),
          -- },
          -- -- stylua: ignore
          -- {
          --   function() return require("noice").api.status.mode.get() end,
          --   cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
          --   color = Util.fg("Constant"),
          -- },
          -- -- stylua: ignore
          -- {
          --   function() return "  " .. require("dap").status() end,
          --   cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
          --   color = Util.fg("Debug"),
          -- },
          -- { require("lazy.status").updates, cond = require("lazy.status").has_updates, color = Util.fg("Special") },
          -- {
          --   "diff",
          --   symbols = {
          --     added = icons.git.added,
          --     modified = icons.git.modified,
          --     removed = icons.git.removed,
          --   },
          -- },
        },
        lualine_y = {
          {
            "filetype",
            icon_only = true,
            colored = true,
            separator = { left = "", rigth = " " },
          },
          { "progress", separator = { right = " ", left = "" } },
          { "location", separator = { right = "" }, padding = { left = 0, right = 1 } },
        },
        lualine_z = {
          "fileformat",
          { "encoding", separator = { right = "" } },

          -- reloj
          --          function()
          --            return " " .. os.date("%R")
          --          end,
        },
      },
      tabline = {},
      winbar = {},
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
