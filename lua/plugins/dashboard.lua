return {
  "nvimdev/dashboard-nvim",
  opts = {
    theme = "hyper",
    config = {
      week_header = {
        enable = true,
      },
      mru = { limit = 6 },
      footer = {},
      shortcut = {
        {
          desc = "lazy",
          icon = "󰒲 ",
          icon_hl = "@variable",
          group = "@constructor",
          action = "Lazy",
          key = "l",
        },
        {
          desc = "update",
          icon = "󰊳 ",
          icon_hl = "@variable",
          group = "@property",
          action = "Lazy update",
          key = "u",
        },
        {
          icon = " ",
          icon_hl = "@variable",
          desc = "files",
          group = "Label",
          action = "Telescope find_files",
          key = "f",
        },
        {
          desc = "grep",
          icon = " ",
          icon_hl = "@variable",
          group = "@exception",
          action = "Telescope live_grep",
          key = "g",
        },
        {
          desc = "session",
          icon = " ",
          icon_hl = "@variable",
          group = "Special",
          action = 'lua require("persistence").load()',
          key = "s",
        },
        {
          desc = "projects",
          icon = " ",
          icon_hl = "@variable",
          group = "DiagnosticSignHint",
          action = "Telescope projects",
          key = "p",
        },
        {
          desc = "config",
          icon = " ",
          icon_hl = "@variable",
          group = "Number",
          action = [[lua require("lazyvim.util").telescope.config_files()()]],
          key = "c",
        },
        {
          desc = "quit",
          icon = " ",
          icon_hl = "@variable",
          group = "DiagnosticSignError",
          action = "qa",
          key = "q",
        },
      },
    },
  },
}
