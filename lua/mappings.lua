require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })

-- for switching to Normal Mode
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

-- for exiting terminal
map('t', '<ESC>', [[<C-\><C-n>]], { noremap = true, silent = true })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
