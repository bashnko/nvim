vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>re", "<cmd>mksession! Session.vim | restart source Session.vim <CR>")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set({ "n", "v" }, "$", "g_")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("x", "<leader>p", [["_dP]])
keymap.set("n", "<leader>Y", [["+Y]])


-- quickfix keymaps
keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww muxify<CR>")
keymap.set("n", "<leader>fm", vim.lsp.buf.format)
keymap.set("n", "<leader>%", "<cmd>source %<CR>")
keymap.set({"n","v"}, ",x", ":.lua<CR>")
keymap.set("n", "<leader>st", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>xx", "<cmd>!chmod +x %<CR>", { silent = true })
keymap.set("n", "<leader>u", ":Undotree<CR>")

keymap.set("n", "<leader>er", function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not current })
  print("Diagnostics: " .. (current and "OFF" or "ON"))
end, { desc = "Toggle inline diagnostics" })

