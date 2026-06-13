vim.g.mapleader = " "

vim.pack.add({
	{ src = "https://github.com/vague-theme/vague.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-mini/mini.surround" },
	{ src = "https://github.com/epwalsh/obsidian.nvim" },
	-- telescope and deps
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	-- lsp/comp engine
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
	{ src = "https://github.com/hrsh7th/cmp-buffer" },
	{ src = "https://github.com/hrsh7th/cmp-path" },
	{ src = "https://github.com/saadparwaiz1/cmp_luasnip" },
	{ src = "https://github.com/L3MON4D3/LuaSnip", version = "v2.*" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/onsails/lspkind.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	-- lint & format
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/mfussenegger/nvim-lint" },
})

-- colorscheme
require("vague").setup({
	on_highlights = function() end,
	colors = {
		-- bg = '#000000',
	},
})
vim.cmd.colorscheme("dragon")
require("vim._core.ui2").enable({})

-- source plug w/ conf
require("mini.surround").setup()
require("custom.plugs.oil")
require("custom.plugs.telescope")
require("custom.plugs.mason")
require("custom.plugs.conform")
require("custom.plugs.lint")
require("custom.plugs.cmp")
require("custom.plugs.treesitter")
require("custom.plugs.obsidian")

vim.cmd.packadd("nvim.undotree")
vim.cmd.packadd("nvim.difftool")
