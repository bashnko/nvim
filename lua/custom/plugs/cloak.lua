require("cloak").setup({
	enabled = true,
	cloak_character = "*",
	highlight_group = "Comment",
	pattern = {
		{
			file_pattern = {
				".env",
			},
			cloak_pattern = "=.+",
		},
	},
})
