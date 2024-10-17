local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local group = augroup("user_cmds", { clear = true })

autocmd("TextYankPost", {
  desc = "Highlight on yank",
  group = group,
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 300 })
  end,
})

autocmd("FileType", {
  pattern = { "help", "man" },
  group = group,
  command = "nnoremap <buffer> q <Cmd>quit<CR>",
})

local del_qf_item = function()
  local items = vim.fn.getqflist()
  local line = vim.fn.line('.')
  table.remove(items, line)
  vim.fn.setqflist(items, "r")
  vim.api.nvim_win_set_cursor(0, { line, 0 })
end

autocmd("FileType", {
  pattern = { "qf" },
  group = group,
  callback = function(event)
    vim.keymap.set("n", "dd", del_qf_item, { buffer = event.buf })
  end
})
