return { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    event = 'VeryLazy',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { -- If encountering errors, see telescope-fzf-native README for install instructions
            'nvim-telescope/telescope-fzf-native.nvim',

            -- `build` is used to run some command when the plugin is installed/updated.
            -- This is only run then, not every time Neovim starts up.
            build = 'make',

            -- `cond` is a condition used to determine whether this plugin should be
            -- installed and loaded.
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
        { 'nvim-telescope/telescope-ui-select.nvim' },

        -- Useful for getting pretty icons, but requires special font.
        --  If you already have a Nerd Font, or terminal set up with fallback fonts
        --  you can enable this
        -- { 'nvim-tree/nvim-web-devicons' }
    },
    config = function()
        -- Telescope is a fuzzy finder that comes with a lot of different things that
        -- it can fuzzy find! It's more than just a "file finder", it can search
        -- many different aspects of Neovim, your workspace, LSP, and more!
        --
        -- The easiest way to use telescope, is to start by doing something like:
        --  :Telescope help_tags
        --
        -- After running this command, a window will open up and you're able to
        -- type in the prompt window. You'll see a list of help_tags options and
        -- a corresponding preview of the help.
        --
        -- Two important keymaps to use while in telescope are:
        --  - Insert mode: <c-/>
        --  - Normal mode: ?
        --
        -- This opens a window that shows you all of the keymaps for the current
        -- telescope picker. This is really useful to discover what Telescope can
        -- do as well as how to actually do it!

        -- [[ Configure Telescope ]]
        -- See `:help telescope` and `:help telescope.setup()`
        require('telescope').setup {
            -- You can put your default mappings / updates / etc. in here
            --  All the info you're looking for is in `:help telescope.setup()`
            --
            -- defaults = {
            --   mappings = {
            --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
            --   },
            -- },
            -- pickers = {}
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
            },
        }

        -- Enable telescope extensions, if they are installed
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')

        -- See `:help telescope.builtin`
        local builtin = require 'telescope.builtin'
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]earch [H]elp' })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]earch [K]eymaps' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]earch [F]iles' })
        vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[F]earch [S]elect Telescope' })
        -- vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[F]earch current [W]ord' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]earch by [G]rep' })
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]earch [D]iagnostics' })
        vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = '[F]ind [M]anual Pages' })
        -- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[F]earch [R]esume' })
        -- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[F]earch Recent Files ("." for repeat)' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F] Find existing buffers' })

        -- Slightly advanced example of overriding default behavior and theme
        -- vim.keymap.set('n', '<leader>/', function()
        --   -- You can pass additional configuration to telescope to change theme, layout, etc.
        --   builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        --     winblend = 10,
        --     previewer = false,
        --   })
        -- end, { desc = '[/] Fuzzily search in current buffer' })

        -- Also possible to pass additional configuration options.
        --  See `:help telescope.builtin.live_grep()` for information about particular keys
        -- vim.keymap.set('n', '<leader>s/', function()
        --   builtin.live_grep {
        --     grep_open_files = true,
        --     prompt_title = 'Live Grep in Open Files',
        --   }
        -- end, { desc = '[S]earch [/] in Open Files' })

        -- Shortcut for searching your neovim configuration files
        vim.keymap.set('n', '<leader>;', function()
            builtin.find_files { cwd = vim.fn.stdpath 'config' }
        end, { desc = 'CONFIG' })
    end,
}

-- return {
-- 	"nvim-telescope/telescope.nvim",
-- 	branch = "0.1.x",
-- 	event = "VeryLazy",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		-- "nvim-tree/nvim-web-devicons",
-- 		{
-- 			'nvim-telescope/telescope-fzf-native.nvim',
-- 			build = 'make',
-- 		},
-- 	},
-- 	config = function()
-- 		require("telescope").setup({
-- 			defaults = {
-- 				mappings = {
-- 					i = {
-- 						["<TAB>"] = "move_selection_next",
-- 						["<S-TAB>"] = "move_selection_previous",
-- 					},
-- 				},
-- 				sorting_strategy = "ascending",
-- 			},
-- 			extensions = {
-- 				fzf = {
-- 					fuzzy = true,                   -- false will only do exact matching
-- 					override_generic_sorter = true, -- override the generic sorter
-- 					override_file_sorter = true,    -- override the file sorter
-- 					case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
-- 					-- the default case_mode is "smart_case"
-- 				}
-- 			},
-- 			-- pickers = {
-- 			--   find_files = {
-- 			--     -- theme = "dropdown", --"dropdown"
-- 			--     previewer = true,
-- 			--   hidden = true,
-- 			-- },
-- 			--   live_grep = {
-- 			--     -- theme = "dropdown",
-- 			--     previewer = true,
-- 			--   },
-- 			--   buffers = {
-- 			--     -- theme = "dropdown",
-- 			--     previewer = true,
-- 			--   },
-- 			-- },
-- 		})
--
-- 		require('telescope').load_extension('fzf')
-- 		local builtin = require("telescope.builtin")
--
-- 		vim.keymap.set("n", "<leader>f", builtin.find_files, {})
-- 		vim.keymap.set("n", "<leader>F", builtin.live_grep, {})
-- 		vim.keymap.set("n", "<leader>b", builtin.buffers, {})
-- 		vim.keymap.set("n", "<leader>k", builtin.keymaps, {})
-- 		vim.keymap.set("n", "<leader>m", builtin.man_pages, {})
-- 		vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
-- 		vim.keymap.set("n", "<leader>;", function()
-- 			builtin.find_files({ cwd = '~/.config/nvim' }, {})
-- 		end)
-- 	end,
-- }
