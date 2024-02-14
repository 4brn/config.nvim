return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "vimdoc", "javascript", "typescript", "c", "lua", "rust", "javascript", "bash" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            -- indent = { enable = true },
        })
    end
}
