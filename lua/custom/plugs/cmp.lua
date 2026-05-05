local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	completion = {
		completeopt = "menu,menuone,noselect",
		autocomplete = { cmp.TriggerEvent.TextChanged },
	},

	window = {
		completion = {
			scrollbar = true,
			border = "single",
			side_padding = 1,
			col_offset = -3,
			winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:CmpSel",
		},
		documentation = {
			scrollbar = true,
			border = "single",
			winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder",
		},
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

	sources = cmp.config.sources({
		{ name = "luasnip" },
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	}),

	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.abort(),
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<CR>"] = cmp.mapping(function(fallback)
			fallback()
		end, { "i", "s" }),
		["<Tab>"] = cmp.mapping(function(fallback)
			fallback()
		end, { "i", "s" }),
	}),

	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			maxwidth = 50,
			ellipsis_char = "...",
			show_labelDetails = true,
		}),
	},
})

vim.api.nvim_set_hl(0, "CmpSel", {
	bg = "#313244",
	fg = "NONE",
	bold = true,
})

vim.keymap.set({ "i", "s" }, "<c-k>", function()
	if luasnip.expand_or_jumpable() then
		luasnip.jump()
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-j>", function()
	if luasnip.expand_or_jumpable(-1) then
		luasnip.jump(-1)
	end
end, { silent = true })
