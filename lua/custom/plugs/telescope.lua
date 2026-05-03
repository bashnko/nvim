require("telescope").setup({
	defaults = {
		borders = {
			"─", -- top
			"│", -- right
			"─", -- bottom
			"│", -- left
			"┌", -- top-left
			"┐", -- top-right
			"┘", -- bottom-right
			"└", -- bottom-left
		},
		path_display = { "smart" },
		-- layout_config = {
		-- 	height = 100,
		-- 	width = 400,
		-- },
	},
	pickers = {
		find_files = {
			hidden = false,
		},
	},
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>so", builtin.find_files, {})
vim.keymap.set("n", "<leader>cm", builtin.git_commits, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ss", builtin.live_grep, { silent = true })

vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
