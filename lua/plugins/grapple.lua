return {
  "cbochs/grapple.nvim",
  event = { "BufReadPost", "BufNewFile" },
  cmd = "Grapple",
  keys = {
    { "<CR>", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
    { "<Leader>e", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
    { "<Tab>", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
    { "<S-Tab>", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
  },
  opts = {
    icons = false,
    win_opts = {
      border = "rounded",
      footer = "",
    },
  },
}
