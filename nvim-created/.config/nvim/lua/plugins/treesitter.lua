return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				sync_install = false,
				ignore_install = {},
				auto_install = true,
				ensure_installed = {
					"c",
					"bash",
					"ruby",
					"html",
					"css",
					"scss",
					"javascript",
					"typescript",
					"json",
					"help",
					"lua",
					"go",
				},
				highlight = { enable = true },
				indent = { enable = false },
			})
		end,
	},
}
