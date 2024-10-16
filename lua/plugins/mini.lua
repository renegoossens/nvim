return {
  "echasnovski/mini.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("mini.ai").setup()
    require("mini.move").setup()
    require("mini.surround").setup()
    -- require("mini.tabline").setup()
  end,
}
