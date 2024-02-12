return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import mason-null-ls
		local mason_null_ls = require("mason-null-ls")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"pyright",
				"clangd",
				"svlangserver",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_null_ls.setup({
			-- list of formatters & linters for mason to install
			ensure_installed = {
				"prettier", -- ts/js formatter
				"stylua", -- lua formatter
				"eslint_d", -- ts/js linter
				"clang_format", -- c/cpp/cs/cuda linter
				"pylint", -- python linter
				"svlangserver",
			},
			-- auto-install configured formatters & linters (with null-ls)
			automatic_installation = true,
		})

		-- mason_tool_installer.setup({
		--   ensure_installed = {
		--     "prettier", -- prettier formatter
		--     "stylua", -- lua formatter
		--     "isort", -- python formatter
		--     "black", -- python formatter
		--     "pylint", -- python linter
		--   },
		-- })
	end,
}
