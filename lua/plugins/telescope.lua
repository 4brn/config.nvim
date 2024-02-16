return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- "nvim-tree/nvim-web-devicons",
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
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
			extensions = {
				fzf = {
					fuzzy = true,                   -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true,    -- override the file sorter
					case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				}
			},
			-- pickers = {
			--   find_files = {
			--     -- theme = "dropdown", --"dropdown"
			--     previewer = true,
			--   hidden = true,
			-- },
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

		require('telescope').load_extension('fzf')
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>f", builtin.find_files, {})
		vim.keymap.set("n", "<leader>F", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>b", builtin.buffers, {})
		vim.keymap.set("n", "<leader>k", builtin.keymaps, {})
		vim.keymap.set("n", "<leader>m", builtin.man_pages, {})
		vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>c", function()
			builtin.find_files({ cwd = '~/.config/nvim' }, {})
		end)
	end,
}
