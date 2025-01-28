return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local config = require("nvim-treesitter.configs") 
        config.setup({
        ensure_installed = {"python", "lua", "c", "cpp", "rust", "javascript", "vim", "powershell", "markdown", "julia", "kotlin", "go", "json"},
        highlight = { enable = true },
        indent = { enable = true },
    })
    end
}
