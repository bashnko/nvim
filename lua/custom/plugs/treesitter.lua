local ts = require("nvim-treesitter")

ts.setup({})
local ensure_installed = {
	"lua",
	"go",
	"bash",
	"nix",
	"javascript",
	"typescript",
	"markdown",
}

ts.install(ensure_installed, { async = true })

local function is_installed(lang)
	local installed = require("nvim-treesitter.config").get_installed()
	return vim.tbl_contains(installed, lang)
end

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local buf = args.buf
		local ft = vim.bo[buf].filetype
		local lang = vim.treesitter.language.get_lang(ft)

		if not lang then
			return
		end
		if lang == "oil" or lang == "nvim-undotree" then
			return
		end

		if not is_installed(lang) then
			ts.install(lang, { async = true })
			return
		end

		pcall(vim.treesitter.start, buf, lang)

		if ft ~= "yaml" and ft ~= "markdown" then
			vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			vim.bo[buf].smartindent = false
			vim.bo[buf].cindent = false
		end
	end,
})
