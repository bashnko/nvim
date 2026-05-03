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

local lang_blocklist = {
	oil = true,
	["nvim-undotree"] = true,
}

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local buf = args.buf

		local buftype = vim.bo[buf].buftype
		if buftype ~= "" then
			return
		end

		if vim.api.nvim_buf_get_name(buf) == "" then
			return
		end

		local ft = vim.bo[buf].filetype
		if ft == "" then
			return
		end

		local lang = vim.treesitter.language.get_lang(ft)
		if not lang then
			return
		end

		if lang_blocklist[lang] then
			return
		end

		local ok, parser_configs = pcall(require, "nvim-treesitter.parsers")
		if ok and not parser_configs[lang] then
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
