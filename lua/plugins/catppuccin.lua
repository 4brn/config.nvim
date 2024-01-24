return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                integrations = {
                    fidget = false,
                    telescope = false,
                },
                styles = {
                    comments = {},
                    conditionals = {},
                },
            })

            vim.cmd.colorscheme "catppuccin"
        end
    }
}