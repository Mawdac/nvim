local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      keys = {
        -- disable terminal keymaps
        { "<leader>ft", false },
        { "<leader>fT", false },
      },
    },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "lazyvim.plugins.extras.editor.harpoon2" },
    { import = "lazyvim.plugins.extras.editor.mini-files" },
    { import = "lazyvim.plugins.extras.editor.outline" },
    { import = "lazyvim.plugins.extras.test.core" },
    { import = "lazyvim.plugins.extras.util.project" },

    -- NOTE: This should always be last
    { import = "plugins" },
    { import = "lazyvim.plugins.extras.lazyrc" },
    -- Enable project-specific plugin specs with a `.lazy.lua` file.
    -- File .lazy.lua:
    --   is read when present in the current working directory should return a
    --   plugin spec has to be manually trusted for each instance of the file
    -- See:
    --   :h 'exrc'
    --   :h :trust
  },
  defaults = {
    lazy = true,
    version = false, -- always use the latest release, likely to break stuff
    -- version = "*", -- latest stable
  },
  install = { colorscheme = { "tokyonight" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  ui = {
    border = "rounded",
    title = " Lazy 💤 ",
  },
  change_detection = {
    notify = false,
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
