return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	config = function()
		vim.g.mkdp_auto_close = 0
		-- 热键：Space + m 在浏览器中打开 Markdown 预览
		vim.api.nvim_set_keymap("n", "<Space>m", "<Plug>MarkdownPreviewToggle", {})
	end,
}
