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
    config = function()
      require("treesitter-context").setup({
        mode = "topline",
      })
      -- TODO: better visualisation of treesitter-context
      vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "CursorLineNr" })
    end,
  },
  {
    "Wansmer/treesj",
    keys = {
      { "<leader>j", desc = "Join treesitter node" },
      { "<leader>s", desc = "Split treesitter node" },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },
}
