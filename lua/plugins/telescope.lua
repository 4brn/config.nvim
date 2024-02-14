return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- "nvim-tree/nvim-web-devicons",
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<TAB>"] = "move_selection_next",
                            ["<S-TAB>"] = "move_selection_previous",
                        },
                    },
                    sorting_strategy = "ascending",
                },
                -- pickers = {
                --   find_files = {
                --     -- theme = "dropdown", --"dropdown"
                --     previewer = true,
                --     hidden = false,
                --   },
                --   live_grep = {
                --     -- theme = "dropdown",
                --     previewer = true,
                --   },
                --   buffers = {
                --     -- theme = "dropdown",
                --     previewer = true,
                --   },
                -- },
            })

            pcall(require('telescope').load_extension, 'fzf')
            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>f", builtin.find_files, {})
            vim.keymap.set("n", "<leader>F", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>b", builtin.buffers, {})
        end,
    },
}
