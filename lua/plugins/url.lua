return {
  "sontungexpt/url-open",
  event = "VeryLazy",
  cmd = "URLOpenUnderCursor",
  keys = {
    { "gx", "<Cmd>URLOpenUnderCursor<CR>", desc = "Open URL" },
  },
  opts = {
    highlight_url = {
      cursor_move = {
        fg = "text",
      },
    },
  },
}
