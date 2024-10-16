return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make", -- cd .config/nvim/lazy/telescope-fzf-native.nvim && make
      config = function() require("telescope").load_extension("fzf") end,
    },
  },
  cmd = "Telescope",
  keys = {
    { "<leader>T", "<cmd>Telescope<cr>", desc = "Telescope builtins" },
    { "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
  },
  opts = {},
}
