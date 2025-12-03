vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "gr", function() telescope.lsp_references() end, { noremap = true, silent = true })
