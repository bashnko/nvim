local lint = require("lint")

lint.linters_by_ft = {
	lua = { "luacheck" },
	javascript = { "eslint_d" },
	javascriptreact = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	sh = { "shellcheck" },
	bash = { "shellcheck" },
}

local lint_group = vim.api.nvim_create_augroup("custom_lint", { clear = true })

local function available_linters_for(filetype)
	local configured_linters = lint.linters_by_ft[filetype]
	if not configured_linters then
		return {}
	end

	local available_linters = {}
	for _, linter_name in ipairs(configured_linters) do
		local linter = lint.linters[linter_name]
		local command = linter and linter.cmd
		if type(command) == "string" and vim.fn.executable(command) == 1 then
			table.insert(available_linters, linter_name)
		end
	end

	return available_linters
end

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "TextChanged" }, {
	group = lint_group,
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()
		local filetype = vim.bo[bufnr].filetype
		local available_linters = available_linters_for(filetype)
		if vim.tbl_isempty(available_linters) then
			return
		end

		lint.try_lint(available_linters)
	end,
})

