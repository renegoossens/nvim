return {
  "sontungexpt/url-open",
  event = "VeryLazy",
  cmd = "URLOpenUnderCursor",
  keys = {
    { "gx", "<cmd>URLOpenUnderCursor<cr>", desc = "Open URL" },
  },
  opts = {
    highlight_url = {
      cursor_move = {
        fg = "text",
      },
    },
  },
}
