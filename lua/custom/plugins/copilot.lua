return {
	{
		"github/copilot.vim",
		lazy = false,
		config = function()
			vim.g.copilot_enabled = 1

			vim.keymap.set(
				"i",
				"<C-j>",
				'copilot#Accept("<CR>")',
				{ expr = true, silent = true, replace_keycodes = false }
			)
			vim.keymap.set("i", "<C-k>", "<Plug>(copilot-dismiss)", { silent = true })
			vim.keymap.set("i", "<C-l>", "<Plug>(copilot-next)", { silent = true })
			vim.keymap.set("i", "<C-h>", "<Plug>(copilot-previous)", { silent = true })

			vim.g.copilot_filetypes = {
				markdown = true,
				txt = false,
				text = false,
				gitcommit = true,
				lua = false,
				javascript = false,
				typescript = false,
				javascriptreact = false,
				typescriptreact = false,
				html = false,
				css = false,
				sh = false,
				go = false,
				yaml = false,
                cpp = false
			}
		end,
	},
}
