require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		go = { "gofmt" },
		sh = { "shfmt" },
		bash = { "shfmt" },
		nix = { "alejandra" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})

vim.keymap.set("n", "<leader>fm", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format buffer" })

