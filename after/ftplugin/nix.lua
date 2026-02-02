local set = vim.opt_local

set.shiftwidth = 2
set.tabstop = 2

vim.keymap.set("n", "<leader>fm", ":%!alejandra -qq<CR>", { silent = true })
