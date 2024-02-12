return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	--config = true,

	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "_" },
				topdelete = { text = "▔" },
				changedelete = { text = "┃" },
				untracked = { text = "┃" },
			},
			current_line_blame = true,
		})
	end,
}
