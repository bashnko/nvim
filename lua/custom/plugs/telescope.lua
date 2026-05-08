vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
})
require("telescope").setup({
	defaults = {
		borderchars = {
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
			theme = "dropdown",
			find_command = { "fd", "--type", "f", "--hidden", "--follow", "--exclude", ".git" },
		},
		live_grep = {},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

local builtin = require("telescope.builtin")
pcall(function()
	require("telescope").load_extension("fzf")
end)
vim.keymap.set("n", "<leader>st", builtin.find_files, {})
vim.keymap.set("n", "<leader>cm", builtin.git_commits, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ss", builtin.live_grep, { silent = true })
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fw", builtin.grep_string, {})
vim.keymap.set("n", "<leader>fw", builtin.grep_string, {})
vim.keymap.set("n", "<leader>fn", builtin.lsp_document_symbols, {})
