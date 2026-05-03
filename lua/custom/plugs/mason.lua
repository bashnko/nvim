require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"gopls",
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"shfmt",
		"shellcheck",
		"eslint_d",
		"alejandra",
	},
})
