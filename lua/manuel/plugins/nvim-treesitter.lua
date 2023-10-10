return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },

      indent = { enable = true },

      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "scss",
        "css",
        "markdown",
        "markdown_inline",
        "svelte",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
