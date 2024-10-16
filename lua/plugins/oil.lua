return {
  "stevearc/oil.nvim",
  lazy = false,
  keys = {
    { "-", "<Cmd>Oil<CR>", desc = "Oil" },
  },
  opts = {
    skip_confirm_for_simple_edits = true,
    -- columns = { "" },
    keymaps = {
      ["<C-v>"] = "actions.select_vsplit",
      ["<C-s>"] = "actions.select_split",
    },
    view_options = {
      show_hidden = true,
    },
  },
}
