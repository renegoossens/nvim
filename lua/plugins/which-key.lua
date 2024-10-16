return {
  -- enabled = false,
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    icons = {
      mappings = false,
    },
    win = {
      border = "single",
    },
  },
}
