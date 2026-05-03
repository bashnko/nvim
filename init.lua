vim.g.mapleader = " "

vim.pack.add({
	{src = 'https://github.com/vague-theme/vague.nvim'},
	{src = 'https://github.com/stevearc/oil.nvim'},
	-- telescope and deps
	{src = 'https://github.com/nvim-telescope/telescope.nvim'},
	{src = 'https://github.com/nvim-lua/plenary.nvim'},
	-- lsp/comp engine
	{src = 'https://github.com/mason-org/mason.nvim'},
	{src = 'https://github.com/mason-org/mason-lspconfig.nvim'},
	{src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim'},
	{src = 'https://github.com/neovim/nvim-lspconfig'},
	{src = 'https://github.com/hrsh7th/nvim-cmp'},
	{src = 'https://github.com/hrsh7th/cmp-nvim-lsp'},
	{src = 'https://github.com/hrsh7th/cmp-buffer'},
	{src = 'https://github.com/hrsh7th/cmp-path'},
	{src = 'https://github.com/L3MON4D3/LuaSnip'},
	{src = 'https://github.com/rafamadriz/friendly-snippets'},
	{src = 'https://github.com/onsails/lspkind.nvim'},
	{src = 'https://github.com/nvim-treesitter/nvim-treesitter'},

})

vim.cmd.colorscheme('vague')

--plugn conf
require("mason").setup()

-- ext plugs
require("custom.plugs.oil")
require("custom.plugs.telescope")
require("custom.plugs.mason")
require("custom.plugs.cmp")
require("custom.plugs.treesitter")
