local opts = {
	-- { "tpope/vim-sleuth" }, -- Detect tabstop and shiftwidth automatically

	-- require("plugins.colorschemes.rose-pine"),
	-- require("plugins.colorschemes.tokyonight"),
	-- require("plugins.colorschemes.night-owl"),
	-- require("plugins.colorschemes.gruvbox"),
	require("plugins.colorschemes.catppuccin"),

	require("plugins.lualine"),
	require("plugins.lspconfig"),
	require("plugins.treesitter"),
	require("plugins.cmp"),
	require("plugins.telescope"),
	require("plugins.oil"),
	require("plugins.undotree"),
	require("plugins.comment"),
	require("plugins.which-key"),
	require("plugins.autopairs"),
	require("plugins.conform"),
	require("plugins.lint"),
	require("plugins.dressing"),
	require("plugins.trouble"),
	require("plugins.gitsigns"),
	require("plugins.vim-be-good"),
	require("plugins.indent_line"),

	-- require 'plugins.todo_comments',
	-- require 'plugins.mini',
	-- require 'plugins.debug',

	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
	ui = {
		border = "rounded",
	},
	defaults = {
		lazy = false,
		-- version = false,
	},
}

require("lazy").setup({ opts })
-- vim: ts=4 sts=4 sw=4 et
