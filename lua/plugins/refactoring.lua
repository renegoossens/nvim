return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  cmd = "Refactor",
  keys = {
    {
      "<leader>R",
      function() require("refactoring").select_refactor({}) end,
      desc = "Refactor",
      mode = { "n", "x" },
    },
    {
      "<leader>rp",
      function() require("refactoring").debug.printf({}) end,
      desc = "Debug printf",
    },
    {
      "<leader>rv",
      function() require("refactoring").debug.print_var({}) end,
      mode = { "x", "n" },
      desc = "Debug print var",
    },
    {
      "<leader>rc",
      function() require("refactoring").debug.cleanup({}) end,
      desc = "Debug clean print statements",
    },
  },
  opts = {},
}
