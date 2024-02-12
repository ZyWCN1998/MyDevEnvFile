return {
	"HiPhish/rainbow-delimiters.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local rainbow_delimiters = require("rainbow-delimiters")
		vim.g.rainbow_delimiters = {
			strategy = {
				[""] = rainbow_delimiters.strategy["global"],
				vim = rainbow_delimiters.strategy["local"],
			},
			query = {
				[""] = "rainbow-delimiters",
				lua = "rainbow-blocks",
			},
			highlight = {
				"RainbowDelimiterBlue",
				"RainbowDelimiterYellow",
				"RainbowDelimiterCyan",
				"RainbowDelimiterViolet",
				"RainbowDelimiterRed",
				"RainbowDelimiterOrange",
				"RainbowDelimiterGreen",
			},
		}
	end,
}
