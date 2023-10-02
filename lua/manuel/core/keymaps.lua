local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

