return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make", -- cd .config/nvim/lazy/telescope-fzf-native.nvim && make
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  cmd = "Telescope",
  keys = {
    { "<Leader>T", "<Cmd>Telescope<CR>", desc = "Telescope builtins" },
    { "<Leader><Leader>", "<Cmd>Telescope find_files<CR>" },
  },
  opts = {},
}
