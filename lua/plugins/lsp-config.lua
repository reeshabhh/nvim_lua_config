return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "ruff", "rust_analyzer", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			lspconfig.lua_ls.setup({capabilities = capabilities})
			lspconfig.pyright.setup({capabilities = capabilities})
			lspconfig.ruff.setup({capabilities = capabilities})
			lspconfig.rust_analyzer.setup({capabilities = capabilities})
			lspconfig.ts_ls.setup({capabilities = capabilities})
		end,
	},
}
