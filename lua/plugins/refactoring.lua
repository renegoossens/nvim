return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  cmd = "Refactor",
  keys = {
    {
      "<Leader>R",
      function()
        require("refactoring").select_refactor({})
      end,
      desc = "Refactor",
      mode = { "n", "x" },
    },
    {
      "<Leader>rp",
      function()
        require("refactoring").debug.printf({})
      end,
      desc = "Debug printf",
    },
    {
      "<Leader>rv",
      function()
        require("refactoring").debug.print_var({})
      end,
      mode = { "x", "n" },
      desc = "Debug print var",
    },
    {
      "<Leader>rc",
      function()
        require("refactoring").debug.cleanup({})
      end,
      desc = "Debug clean print statements",
    },
  },
  opts = {},
}
