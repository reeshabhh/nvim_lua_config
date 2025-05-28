return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local config = require("nvim-treesitter.configs") 
        config.setup({
        -- ensure_installed = {"python", "lua", "c", "cpp", "rust", "javascript", "vim", "powershell", "markdown", "julia", "kotlin", "go", "json"},
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    })
    end
}
