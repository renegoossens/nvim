return {
  "folke/todo-comments.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  event = "VeryLazy",
  keys = {
    -- TODO: TodoTelescope horizontal preview
    { "<Leader>t", "<Cmd>TodoTelescope<CR>", desc = "Telescope todo" },
    {
      "]t",
      function() require("todo-comments").jump_next() end,
      desc = "Next Todo",
    },
    {
      "[t",
      function() require("todo-comments").jump_prev() end,
      desc = "Previous Todo",
    },
  },
  config = function()
    require("todo-comments").setup({
      highlight = {
        multiline = true,
        multiline_pattern = "^ .",
      },
    })

    vim.api.nvim_set_hl(0, "@text.todo", {})
    vim.api.nvim_set_hl(0, "@comment.todo", {})
    vim.api.nvim_set_hl(0, "@comment.note", {})
    vim.api.nvim_set_hl(0, "@comment.warning", {})
    vim.api.nvim_set_hl(0, "@comment.error", {})
  end,
}
