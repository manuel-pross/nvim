local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map keys using the leader key
vim.api.nvim_set_keymap("n", "<leader>n", ":bn<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>b", ":bp<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>t", ":enew<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader><leader>", "<C-W>w", opts)
