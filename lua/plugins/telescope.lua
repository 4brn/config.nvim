return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ -- If encountering errors, see telescope-fzf-native README for installation instructions
			"nvim-telescope/telescope-fzf-native.nvim",

			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",

			-- `cond` is a condition used to determine whether this plugin should be
			-- installed and loaded.
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },

		-- Useful for getting pretty icons, but requires a Nerd Font.
		-- { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
	},
	config = function()
		-- The easiest way to use Telescope, is to start by doing something like:
		--  :Telescope help_tags
		-- See `:help telescope` and `:help telescope.setup()`
		require("telescope").setup({
			-- You can put your default mappings / updates / etc. in here
			--  All the info you're looking for is in `:help telescope.setup()`
			--
			-- defaults = {
			--   mappings = {
			--     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
			--   },
			-- },
			-- pickers = {
			--     find_files = {
			--         hidden = true
			--     }
			-- }
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		-- See `:help telescope.builtin`
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]earch [H]elp" })
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]earch [K]eymaps" })
		vim.keymap.set("n", "<leader>fF", builtin.git_files, { desc = "[F]earch Git [F]iles" })
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]earch All [F]iles" })
		vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "[F]earch [S]elect Telescope" })
		vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]earch current [W]ord" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]earch by [G]rep" })
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]earch [D]iagnostics" })
		-- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
		-- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind existing [b]uffers" })

		-- Slightly advanced example of overriding default behavior and theme
		-- vim.keymap.set('n', '<leader>/', function()
		--     -- You can pass additional configuration to Telescope to change the theme, layout, etc.
		--     builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		--         winblend = 10,
		--         previewer = false,
		--     })
		-- end, { desc = '[/] Fuzzily search in current buffer' })

		-- It's also possible to pass additional configuration options.
		--  See `:help telescope.builtin.live_grep()` for information about particular keys
		-- vim.keymap.set('n', '<leader>f/', function()
		--     builtin.live_grep {
		--         grep_open_files = true,
		--         prompt_title = 'Live Grep in Open Files',
		--     }
		-- end, { desc = '[S]earch [/] in Open Files' })

		-- Shortcut for searching your Neovim configuration files
		vim.keymap.set("n", "<leader>fn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S]earch [N]eovim files" })
	end,
}
-- vim: ts=4 sts=4 sw=4 et
