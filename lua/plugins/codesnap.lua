return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>p"] = { name = "+print", mode = "v" },
      },
    },
  },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    cmd = {
      "CodeSnap",
      "CodeSnapHighlight",
      "CodeSnapSave",
      "CodeSnapSaveHighlight",
    },
    opts = {
      mac_window_bar = true,
      title = "",
      code_font_family = "JetBrains Mono",
      watermark = "EJ Reilly",
      bg_theme = "grape",
      breadcrumbs_separator = "/",
      has_breadcrumbs = false,
      has_line_number = true,
      save_path = "~/codesnap",
    },
    keys = {
      {
        "<leader>ps",
        ":CodeSnap<CR>",
        desc = "CodeSnap (clipboard)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>pS",
        ":CodeSnapSave<CR>",
        desc = "CodeSnap (~/codesnap)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>pp",
        ":CodeSnapHighlight<CR>",
        desc = "CodeSnap Highlight (clipboard)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>pP",
        ":CodeSnapSaveHighlight<CR>",
        desc = "CodeSnap Highlight (~/codesnap)",
        mode = "x",
        silent = true,
      },
    },
  },
}
