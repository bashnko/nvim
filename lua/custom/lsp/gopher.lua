return {
	{
		"olexsmir/gopher.nvim",
		ft = "go",
		-- branch = "develop"
		-- (optional) will update plugin's deps on every update
		build = function()
			vim.cmd.GoInstallDeps()
		end,
		---@module "gopher"
		---@type gopher.Config
		opts = {},
	},
}
