return {
    {    "williamboman/mason.nvim",
    config = function()
        require('mason').setup()
    end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "ruff", "rust_analyzer", "ts_ls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require("lspconfig")
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.ruff.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.ts_ls.setup({})
        end
    },

}
