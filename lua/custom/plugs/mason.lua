require("mason-lspconfig").setup({
	ensure_intalled = {
		"lua",
		"ts_ls",
		"go",
	}
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
	}
})
