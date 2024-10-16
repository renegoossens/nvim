return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufNewFile", "BufReadPre" },
  main = "ibl",
  opts = {
    indent = { char = "▏" },
    scope = {
      show_start = false,
      show_end = false,
    },
  },
}
