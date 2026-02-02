return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			local ok, treesitter = pcall(require, "nvim-treesitter.configs")
			if not ok then
				vim.notify("nvim-treesitter not available. Run :Lazy sync", vim.log.levels.WARN)
				return
			end

			treesitter.setup({

				ensure_installed = { "javascript", "typescript", "html", "css", "yaml" },

				highlight = {
					enable = true,

					disable = { "c", "rust" },
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,

					additional_vim_regex_highlighting = false,
				},

				indent = { enable = true },
				auto_install = true,
			})
		end,
	},

	-- {
	-- 	"nvim-treesitter/nvim-treesitter-context",
	-- 	after = "nvim-treesitter",
	-- 	config = function()
	-- 		require("treesitter-context").setup({
	-- 			enable = true,
	-- 			multiwindow = false,
	-- 			max_lines = 0,
	-- 			min_window_height = 0,
	-- 			line_numbers = true,
	-- 			multiline_threshold = 20,
	-- 			trim_scope = "outer",
	-- 			mode = "cursor",
	-- 			separator = nil,
	-- 			zindex = 20,
	-- 			on_attach = nil,
	-- 		})
	-- 	end,
	-- },
}
