vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set({ "n", "v" }, "$", "g_")

vim.keymap.set({ "n", "v" }, "<leader>w", ":write<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>q", ":quit<CR>", { silent = true })

-- macro machine
vim.keymap.set("n", "<leader>me", '"ap')
vim.keymap.set("n", "<leader>mc", '"ay$')

-- quickfix keymaps
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<C-x>", "<cmd>cclose<CR>")
-- vim.keymap.set("n", "<C-o>", "<cmd>copen<CR>")
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yanks to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww muxify<CR>")
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>so", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>xx", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ms", [[:%s//&/gn<Left><Left><Left><Left><Left>]])
vim.keymap.set("n", "<leader>re", ":mksession! Session.vim | restart source Session.vim <CR> ", { silent = true })

-- plugs and test
vim.keymap.set("n", "<leader>%", "<cmd>source %<CR>")
-- vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")
-- vim.keymap.set("n", "<leader>t", "<cmd>PlenaryBustedFile %<CR>")

-- Toggle inline diagnostics
vim.keymap.set("n", "<leader>er", function()
	local current = vim.diagnostic.config().virtual_text
	vim.diagnostic.config({ virtual_text = not current })
	print("Diagnostics: " .. (current and "OFF" or "ON"))
end, { desc = "Toggle inline diagnostics" })

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
