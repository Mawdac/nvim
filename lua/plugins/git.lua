return {
  -- Visuals
  {
    "lewis6991/gitsigns.nvim",
    enabled = true, -- mini-diff extra disables this by default
    opts = {
      current_line_blame = true,
      -- disable all keymaps, only use current_line_blame functinoality
      on_attach = function() end,
    },
  },

  -- Web Links
  {
    "linrongbin16/gitlinker.nvim",
    cmd = "GitLink",
    opts = {},
    keys = {
      { "<leader>gy", "<cmd>GitLink<cr>", mode = { "n", "v" }, desc = "Yank git link" },
      { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
    },
  },
}
