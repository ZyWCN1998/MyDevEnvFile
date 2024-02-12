return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-t>]],
			direction = "float",
			float_opts = {
				border = "curved",
				width = 90,
				height = 20,
			},
		})
	end,
}
