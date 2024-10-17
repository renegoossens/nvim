vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<BS>", "ciw")
map("n", "<Esc>", "<Cmd>nohlsearch<CR>")
map("n", "<Leader>w", "<Cmd>set wrap!<CR>", { desc = "Toggle wrap" })

-- navigate windows
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")

-- azerty
map("", "H", "^", { remap = true })
map("", "L", "$", { remap = true })
map("", "ç", "{", { remap = true })
map("", "à", "}", { remap = true })

-- unimpaired quickfix
map("n", ";c", "<Cmd>cnext<CR>")
map("n", ",c", "<Cmd>cprev<CR>")
map("n", ";C", "<Cmd>clast<CR>")
map("n", ",C", "<Cmd>cfirst<CR>")

-- unimpaired buffers
map("n", ";b", "<Cmd>bnext<CR>")
map("n", ",b", "<Cmd>bprev<CR>")
map("n", ";B", "<Cmd>blast<CR>")
map("n", ",B", "<Cmd>bfirst<CR>")

-- better vertical movement over wrapped lines
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- buffers
map("n", "<Leader>bd", "<Cmd>bdelete<CR>", { desc = "Delete buffer" })
