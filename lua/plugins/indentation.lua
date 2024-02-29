return {
    { 'tpope/vim-sleuth' }, -- Detect tabstop and shiftwidth automatically
    {
        'lukas-reineke/indent-blankline.nvim',
        -- event = "VeryLazy",
        main = 'ibl',
        opts = {
            indent = {
                char = '▎', -- "│"
                tab_char = '▎', -- "│"
            },
            scope = { enabled = false },
            exclude = {
                filetypes = {
                    'help',
                    'alpha',
                    'dashboard',
                    'neo-tree',
                    'Trouble',
                    'trouble',
                    'lazy',
                    'mason',
                    'notify',
                    'toggleterm',
                    'lazyterm',
                    'oil',
                },
            },
        },
    },
}
