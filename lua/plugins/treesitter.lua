return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "RRethy/nvim-treesitter-endwise" },
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = { "lua", "vim", "vimdoc" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      endwise = { enable = true },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "TSContextToggle" },
    keys = {
      { "<Leader>x", "<Cmd>TSContextToggle<CR>" },
    },
    config = function()
      require("treesitter-context").setup({
        enable = false,
        mode = "cursor",
        max_lines = 3,
      })
      vim.api.nvim_set_hl(0, "TreesitterContext", { link = "CursorLine" })
      vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "CursorLineNr" })
    end,
  },
  {
    "Wansmer/treesj",
    keys = {
      { "<Leader>j", desc = "Join treesitter node" },
      { "<Leader>s", desc = "Split treesitter node" },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },
}
